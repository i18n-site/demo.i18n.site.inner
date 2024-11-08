---

brief: |
  i18n.site 現已支持無服務器全文搜索。

  本文將介紹純前端全文檢索技術的實現，涵蓋了由IndexedDB構建的倒排索引、前綴搜索、分詞優化以及多語言支持等方面。

  相較于現有方案，i18n.site的純前端全文搜索體積小巧、響應迅速，非常適合文檔、博客等中小型網站，且支持離线使用。

---

# 純前端倒排全文搜索

## 順序

經過數周的開发，[i18n.site](//i18n.site)(一款純靜態Markdown多語言翻譯與建站工具)現已支持純前端全文搜索功能。

<p style="display:flex;flex-wrap:wrap;justify-content:center"><img src="//p.3ti.site/1727600475.avif" style="width:320px"><img src="//p.3ti.site/1727602760.avif" style="width:320px"></p>

本文將分享`i18n.site`純前端全文檢索技術的具體實現。訪問[i18n.site](//i18n.site)體驗搜索效果。

代碼開源:[搜索內核](//github.com/i18n-site/ie/tree/main/qy) / [交互界面](//github.com/i18n-site/plugin/tree/main/qy)

## 無服務器全文搜索解決方案綜述

對于文檔/個人博客等中小型純靜態網站而言，構建自建的全文搜索后端顯得過于繁瑣，而無服務器全文搜索則成為更為普遍的選擇。

無服務器全文搜索解決方案大致可分為兩大類:

首先，類似于[algolia.com](//algolia.com)的第三方搜索服務提供商，它們提供全文搜索所需的前端組件。

此類服務通常按搜索量計費，且由于網站合規等問題，往往無法在中國大陸地區提供服務。

它們無法離线使用或在內網環境中運行，存在較大的局限性。本文對此將不做深入探討。

其次，是純前端全文檢索。

目前常見的純前端全文檢索工具有 [lunrjs](//lunrjs.com) 和 [ElasticLunr.js](//github.com/weixsong/elasticlunr.js) (基于 `lunrjs` 的二次開发)。

在`lunrjs`中構建索引有几種方法，每種方法都有其優缺點。

1. 預建索引文件

   由于索引中包含了所有文檔的單詞，因此文件體積較大。
   每当添加或修改文檔時，都需要重新加載整個索引文件。
   這會導致用戶等待時間增加，并消耗大量帶寬。

2. 動態加載文檔并構建索引

   構建索引是一項計算密集型任務。每次訪問時都重建索引會導致明顯的延遲，用戶體驗不佳。

---

除了`lunrjs`之外，還有一些其他全文檢索解決方案，例如:

[fusejs](//www.fusejs.io)，它通過計算字符串之間的相似度來進行搜索。

該解決方案的性能非常差，不適合全文檢索(參見[Fuse.js 長查詢超過10秒，如何優化？](//stackoverflow.com/questions/70984437/fuse-js-takes-10-seconds-with-semi-long-queries))。

[TinySearch](//github.com/tinysearch/tinysearch)，它使用布隆過濾器進行搜索，無法進行前綴搜索(例如，輸入`goo`，搜索`good`、`google`)，也無法實現類似的自動補全效果。

鉴于現有解決方案的不足，`i18n.site`開发了一種全新的純前端全文搜索解決方案，具備以下特點:

1. 支持多語言搜索，且體積緊湊。經過`gzip`壓縮后的搜索內核大小僅為`6.9KB`(相比之下，`lunrjs`的大小為`25KB`)
1. 基于`indexedb`構建倒排索引，占用內存較少，且搜索速度快
1. 添加/修改文檔時，僅對添加或修改的文檔重新索引，減少計算量
1. 支持前綴搜索，用戶在輸入時即可實時查看搜索結果
1. 離线可用

以下將詳細介紹`i18n.site`的技術實現細節。

## 多語言分詞

分詞采用瀏覽器原生的`Intl.Segmenter`，主流瀏覽器均支持此接口。

![](//p.3ti.site/1727667759.avif)

分詞的`coffeescript`代碼如下:

```coffee
SEG = new Intl.Segmenter 0, granularity: "word"

seg = (txt) =>
  r = []
  for {segment} from SEG.segment(txt)
    for i from segment.split('.')
      i = i.trim()
      if i and !'|`'.includes(i) and !/\p{P}/u.test(i)
        r.push i
  r

export default seg

export segqy = (q) =>
  seg q.toLocaleLowerCase()
```

其中:

* `/\p{P}/`是用于匹配標點符號的正則表達式模式。它匹配的具體符號包括: `! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~. `.</p><ul><li> ` split('.') `is because` Firefox `browser word segmentation does not segment` .` .</li>


## 索引構建

`IndexedDB`數據庫包含5個對象存儲表:

* `word` : id - 單詞
* `doc` : id - 文檔 URL - 文檔版本號
* `docWord` : 文檔 id 數組 - 單詞 id
* `prefix` : 前綴數組 - 單詞 id
* `rindex` : 單詞 id - 文檔 id : 行號數組

傳遞一個文檔`url`和版本號`ver`的數組，檢查文檔是否存在于`doc`表中。如果不存在，則創建倒排索引。同時，刪除未包含在輸入中的文檔的倒排索引條目。

通過這種方式，實現了增量索引，進而減少了計算負載。

在前端交互方面，可以顯示索引進度條，以防止初始加載時出現卡頓。參考《帶有動畫的進度條:單個進度+純css實現》[英文](//dev.to/i18n-site/a-single-progress-uses-pure-css-to-achieve-animation-effects-2oo) / [中文](//juejin.cn/post/7413586285954154522)。

### IndexedDB高并发寫入

該項目基于使用[idb](//www.npmjs.com/package/idb)庫對IndexedDB的異步封裝進行開发。

IndexedDB的操作，無論是讀取還是寫入，都是異步進行的。在創建索引的過程中，文檔會并发加載以構建索引。

為了防止競爭寫入導致數據丟失，請參考以下`coffeescript`代碼。實現緩存機制，在讀寫操作之間添加`ing`前綴以攔截并发寫入。

```coffee
pusher = =>
  ing = new Map()
  (table, id, val)=>
    id_set = ing.get(id)
    if id_set
      id_set.add val
      return

    id_set = new Set([val])
    ing.set id, id_set
    pre = await table.get(id)
    li = pre?.li or []

    loop
      to_add = [...id_set]
      li.push(...to_add)
      await table.put({id,li})
      for i from to_add
        id_set.delete i
      if not id_set.size
        ing.delete id
        break
    return

rindexPush = pusher()
prefixPush = pusher()
```

## 前綴實時搜索

為了在用戶輸入的同時展示搜索結果。例如，当輸入`Wor`時，將顯示以`Wor`為前綴的單詞，如`words`和`work`。

![](//p.3ti.site/1727684944.avif)

搜索內核將利用分詞后最后一個詞的`prefix`表來查找所有以該詞為前綴的單詞，并進行順序搜索。

在前端交互中，還采用了防抖功能`debounce`(實現方式如下)，以減少用戶輸入觸发搜索的頻率和計算量。

```js
export default (wait, func) => {
  var timeout;
  return function(...args) {
    clearTimeout(timeout);
    timeout = setTimeout(func.bind(this, ...args), wait);
  };
}
```

## 准確率和召回率

搜索首先會對用戶輸入的關鍵詞進行分詞。

假設分詞后有`N`個單詞。在返回結果時，首先返回包含所有關鍵字的文檔，然后返回包含`N-1`、`N-2`、...、`1`個關鍵字的文檔。

優先顯示的搜索結果確保了查詢的准確性，而后續加載的結果(通過點擊“加載更多”按鈕)則保证了召回率。

![](//p.3ti.site/1727684564.avif)

## 按需加載

為了提高響應速度，搜索使用了`yield`生成器實現按需加載，每查詢`limit`個結果后返回一次。

請注意，每次`yield`之后，再次搜索時，都需要重新開啟一個`IndexedDB`的查詢事務。

## 前綴實時搜索

為了在用戶輸入的同時展示搜索結果。例如，当輸入`Wor`時，將顯示以`Wor`為前綴的單詞，如`words`和`work`。

![](//p.3ti.site/1727684944.avif)

搜索內核將利用分詞后最后一個詞的`prefix`表來查找所有以該詞為前綴的單詞，并進行順序搜索。

在前端交互中，還采用了防抖功能`debounce`(實現方式如下)，以減少用戶輸入觸发搜索的頻率和計算量。

```js
export default (wait, func) => {
  var timeout;
  return function(...args) {
    clearTimeout(timeout);
    timeout = setTimeout(func.bind(this, ...args), wait);
  };
}
```

## 離线可用

索引表僅存儲單詞，不存儲原文，從而減少了存儲量。

高亮搜索結果需要重新加載原文，配合`service worker`可以避免重复的網絡請求。

同時，得益于`service worker`對全部文章的緩存，一旦用戶進行搜索，整個網站，包括搜索結果，均可離线訪問。

## Markdown文檔顯示優化

`i18n.site`的純前端搜索解決方案，針對`MarkDown`文檔進行了專門的優化。

在展示搜索結果時，會顯示章節名稱，并允許用戶點擊章節名稱進行跳轉。

![](//p.3ti.site/1727686552.avif)

## 總結

完全在前端實現的倒排全文搜索，無需服務器支持。非常適合文檔、個人博客等中小型網站。

`i18n.site`開源自研的純前端搜索工具體積小巧，響應迅速，有效解決了当前純前端全文搜索的諸多問題，并提供了更佳的用戶體驗。