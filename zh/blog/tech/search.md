---

brief: |
  i18n.site 现已支持无服务器全文搜索。

  本文将介绍纯前端全文检索技术的实现，涵盖了由IndexedDB构建的倒排索引、前缀搜索、分词优化以及多语言支持等方面。

  相较于现有方案，i18n.site的纯前端全文搜索体积小巧、响应迅速，非常适合文档、博客等中小型网站，且支持离线使用。

---

# 纯前端倒排全文搜索

## 顺序

经过数周的开发，[i18n.site](//i18n.site)(一款纯静态Markdown多语言翻译与建站工具)现已支持纯前端全文搜索功能。

<p style="display:flex;flex-wrap:wrap;justify-content:center"><img src="//p.3ti.site/1727600475.avif" style="width:320px"><img src="//p.3ti.site/1727602760.avif" style="width:320px"></p>

本文将分享`i18n.site`纯前端全文检索技术的具体实现。访问[i18n.site](//i18n.site)体验搜索效果。

代码开源:[搜索内核](//github.com/i18n-site/ie/tree/main/qy) / [交互界面](//github.com/i18n-site/plugin/tree/main/qy)

## 无服务器全文搜索解决方案综述

对于文档/个人博客等中小型纯静态网站而言，构建自建的全文搜索后端显得过于繁琐，而无服务器全文搜索则成为更为普遍的选择。

无服务器全文搜索解决方案大致可分为两大类:

首先，类似于[algolia.com](//algolia.com)的第三方搜索服务提供商，它们提供全文搜索所需的前端组件。

此类服务通常按搜索量计费，且由于网站合规等问题，往往无法在中国大陆地区提供服务。

它们无法离线使用或在内网环境中运行，存在较大的局限性。本文对此将不做深入探讨。

其次，是纯前端全文检索。

目前常见的纯前端全文检索工具有 [lunrjs](//lunrjs.com) 和 [ElasticLunr.js](//github.com/weixsong/elasticlunr.js) (基于 `lunrjs` 的二次开发)。

在`lunrjs`中构建索引有几种方法，每种方法都有其优缺点。

1. 预建索引文件

   由于索引中包含了所有文档的单词，因此文件体积较大。
   每当添加或修改文档时，都需要重新加载整个索引文件。
   这会导致用户等待时间增加，并消耗大量带宽。

2. 动态加载文档并构建索引

   构建索引是一项计算密集型任务。每次访问时都重建索引会导致明显的延迟，用户体验不佳。

---

除了`lunrjs`之外，还有一些其他全文检索解决方案，例如:

[fusejs](//www.fusejs.io)，它通过计算字符串之间的相似度来进行搜索。

该解决方案的性能非常差，不适合全文检索(参见[Fuse.js 长查询超过10秒，如何优化？](//stackoverflow.com/questions/70984437/fuse-js-takes-10-seconds-with-semi-long-queries))。

[TinySearch](//github.com/tinysearch/tinysearch)，它使用布隆过滤器进行搜索，无法进行前缀搜索(例如，输入`goo`，搜索`good`、`google`)，也无法实现类似的自动补全效果。

鉴于现有解决方案的不足，`i18n.site`开发了一种全新的纯前端全文搜索解决方案，具备以下特点:

1. 支持多语言搜索，且体积紧凑。经过`gzip`压缩后的搜索内核大小仅为`6.9KB`(相比之下，`lunrjs`的大小为`25KB`)
1. 基于`indexedb`构建倒排索引，占用内存较少，且搜索速度快
1. 添加/修改文档时，仅对添加或修改的文档重新索引，减少计算量
1. 支持前缀搜索，用户在输入时即可实时查看搜索结果
1. 离线可用

以下将详细介绍`i18n.site`的技术实现细节。

## 多语言分词

分词采用浏览器原生的`Intl.Segmenter`，主流浏览器均支持此接口。

![](//p.3ti.site/1727667759.avif)

分词的`coffeescript`代码如下:

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

* `/\p{P}/`是用于匹配标点符号的正则表达式模式。它匹配的具体符号包括: `! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~. `.</p><ul><li> ` split('.') `is because` Firefox `browser word segmentation does not segment` .` .</li>


## 索引构建

`IndexedDB`数据库包含5个对象存储表:

* `word` : id - 单词
* `doc` : id - 文档 URL - 文档版本号
* `docWord` : 文档 id 数组 - 单词 id
* `prefix` : 前缀数组 - 单词 id
* `rindex` : 单词 id - 文档 id : 行号数组

传递一个文档`url`和版本号`ver`的数组，检查文档是否存在于`doc`表中。如果不存在，则创建倒排索引。同时，删除未包含在输入中的文档的倒排索引条目。

通过这种方式，实现了增量索引，进而减少了计算负载。

在前端交互方面，可以显示索引进度条，以防止初始加载时出现卡顿。参考《带有动画的进度条:单个进度+纯css实现》[英文](//dev.to/i18n-site/a-single-progress-uses-pure-css-to-achieve-animation-effects-2oo) / [中文](//juejin.cn/post/7413586285954154522)。

### IndexedDB高并发写入

该项目基于使用[idb](//www.npmjs.com/package/idb)库对IndexedDB的异步封装进行开发。

IndexedDB的操作，无论是读取还是写入，都是异步进行的。在创建索引的过程中，文档会并发加载以构建索引。

为了防止竞争写入导致数据丢失，请参考以下`coffeescript`代码。实现缓存机制，在读写操作之间添加`ing`前缀以拦截并发写入。

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

## 前缀实时搜索

为了在用户输入的同时展示搜索结果。例如，当输入`Wor`时，将显示以`Wor`为前缀的单词，如`words`和`work`。

![](//p.3ti.site/1727684944.avif)

搜索内核将利用分词后最后一个词的`prefix`表来查找所有以该词为前缀的单词，并进行顺序搜索。

在前端交互中，还采用了防抖功能`debounce`(实现方式如下)，以减少用户输入触发搜索的频率和计算量。

```js
export default (wait, func) => {
  var timeout;
  return function(...args) {
    clearTimeout(timeout);
    timeout = setTimeout(func.bind(this, ...args), wait);
  };
}
```

## 准确率和召回率

搜索首先会对用户输入的关键词进行分词。

假设分词后有`N`个单词。在返回结果时，首先返回包含所有关键字的文档，然后返回包含`N-1`、`N-2`、...、`1`个关键字的文档。

优先显示的搜索结果确保了查询的准确性，而后续加载的结果(通过点击“加载更多”按钮)则保证了召回率。

![](//p.3ti.site/1727684564.avif)

## 按需加载

为了提高响应速度，搜索使用了`yield`生成器实现按需加载，每查询`limit`个结果后返回一次。

请注意，每次`yield`之后，再次搜索时，都需要重新开启一个`IndexedDB`的查询事务。

## 前缀实时搜索

为了在用户输入的同时展示搜索结果。例如，当输入`Wor`时，将显示以`Wor`为前缀的单词，如`words`和`work`。

![](//p.3ti.site/1727684944.avif)

搜索内核将利用分词后最后一个词的`prefix`表来查找所有以该词为前缀的单词，并进行顺序搜索。

在前端交互中，还采用了防抖功能`debounce`(实现方式如下)，以减少用户输入触发搜索的频率和计算量。

```js
export default (wait, func) => {
  var timeout;
  return function(...args) {
    clearTimeout(timeout);
    timeout = setTimeout(func.bind(this, ...args), wait);
  };
}
```

## 离线可用

索引表仅存储单词，不存储原文，从而减少了存储量。

高亮搜索结果需要重新加载原文，配合`service worker`可以避免重复的网络请求。

同时，得益于`service worker`对全部文章的缓存，一旦用户进行搜索，整个网站，包括搜索结果，均可离线访问。

## Markdown文档显示优化

`i18n.site`的纯前端搜索解决方案，针对`MarkDown`文档进行了专门的优化。

在展示搜索结果时，会显示章节名称，并允许用户点击章节名称进行跳转。

![](//p.3ti.site/1727686552.avif)

## 总结

完全在前端实现的倒排全文搜索，无需服务器支持。非常适合文档、个人博客等中小型网站。

`i18n.site`开源自研的纯前端搜索工具体积小巧，响应迅速，有效解决了当前纯前端全文搜索的诸多问题，并提供了更佳的用户体验。