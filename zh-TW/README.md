<h1 style="display:flex;justify-content:space-between">i18n.site ⋅ 演示網站<img src="//p.3ti.site/logo.svg" style="user-select:none;margin-top:-1px;width:42px"></h1>

這是一個用于學習 i18n.site 的演示網站。

[`i18n.site`](https://i18n.site/i18n.site) 是一個多語言網站構建工具。

---

命令行 `MarkDown` & `Yaml` 翻譯工具，幫助您構建多語言文檔網站，支持數百種語言...

<pre class="langli" style="display:flex;flex-wrap:wrap;background:transparent;border:1px solid #eee;font-size:12px;box-shadow:0 0 3px inset #eee;padding:12px 5px 4px 12px;justify-content:space-between;"><style>pre.langli i{font-weight:300;font-family:s;margin-right:2px;margin-bottom:8px;font-style:normal;color:#666;border-bottom:1px dashed #ccc;}</style><i>English</i><i>簡體中文</i><i>Deutsch</i><i>Français</i><i>Español</i><i>Italiano</i><i>日本語</i><i>Polski</i><i>Português(Brasil)</i><i>Русский</i><i>Nederlands</i><i>Türkçe</i><i>Svenska</i><i>Čeština</i><i>Українська</i><i>Magyar</i><i>Indonesia</i><i>한국어</i><i>Română</i><i>Norsk</i><i>Slovenčina</i><i>Suomi</i><i>العربية</i><i>Català</i><i>Dansk</i><i>فارسی</i><i>Tiếng Việt</i><i>Lietuvių</i><i>Hrvatski</i><i>עברית</i><i>Slovenščina</i><i>српски језик</i><i>Esperanto</i><i>Ελληνικά</i><i>Eesti</i><i>Български</i><i>ไทย</i><i>Haitian Creole</i><i>Íslenska</i><i>नेपाली</i><i>తెలుగు</i><i>Latine</i><i>Galego</i><i>हिन्दी</i><i>Cebuano</i><i>Melayu</i><i>Euskara</i><i>Bosnian</i><i>Letzeburgesch</i><i>Latviešu</i><i>ქართული</i><i>Shqip</i><i>मराठी</i><i>Azərbaycan</i><i>Македонски</i><i>Wikang Tagalog</i><i>Cymraeg</i><i>বাংলা</i><i>தமிழ்</i><i>Basa Jawa</i><i>Basa Sunda</i><i>Беларуская</i><i>Kurdî(Navîn)</i><i>Afrikaans</i><i>Frysk</i><i>Toğikī</i><i>اردو</i><i>Kichwa</i><i>മലയാളം</i><i>Kiswahili</i><i>Gaeilge</i><i>Uzbek(Latin)</i><i>Te Reo Māori</i><i>Èdè Yorùbá</i><i>ಕನ್ನಡ</i><i>አማርኛ</i><i>Հայերեն</i><i>অসমীয়া</i><i>Aymar Aru</i><i>Bamanankan</i><i>Bhojpuri</i><i>正體中文</i><i>Corsu</i><i>ދިވެހިބަސް</i><i>Eʋegbe</i><i>Filipino</i><i>Guarani</i><i>ગુજરાતી</i><i>Hausa</i><i>Hawaiian</i><i>Hmong</i><i>Ásụ̀sụ́ Ìgbò</i><i>Iloko</i><i>Қазақ Тілі</i><i>ខ្មែរ</i><i>Kinyarwanda</i><i>سۆرانی</i><i>Кыргызча</i><i>ລາວ</i><i>Lingála</i><i>Ganda</i><i>Maithili</i><i>Malagasy</i><i>Malti</i><i>монгол</i><i>မြန်မာ</i><i>ChiCheŵa</i><i>ଓଡ଼ିଆ</i><i>Afaan Oromoo</i><i>پښتو</i><i>ਪੰਜਾਬੀ</i><i>Gagana Sāmoa</i><i>Sanskrit</i><i>Sesotho sa Leboa</i><i>Sesotho</i><i>chiShona</i><i>سنڌي</i><i>සිංහල</i><i>Soomaali</i><i>Татар</i><i>ትግር</i><i>Xitsonga</i><i>Türkmen Dili</i><i>Akan</i><i>isiXhosa</i><i>ייִדיש</i><i>Isi-Zulu</i></pre>

## 序言

互聯網消除了物理距離，但語言障礙卻依然阻礙着人類的團結。

尽管瀏覽器內置了翻譯功能，搜索引擎仍然無法跨語言檢索。

通過社交媒體和電子郵件，人們習慣于關注使用母語的信息源。

在信息爆炸和全球市場的時代，**支持多語言是一項基礎技能**。

即便是面向更廣泛受眾的個人開源項目，也應從一開始就考慮國際化。

## <a rel=id href="#project" Id="project"></a>項目簡介

本站目前提供兩款開源命令行工具:

* [i18: MarkDown 命令行翻譯工具](/demo1)
* [i18n.site: 多語言靜態網站生成器](/demo2)

### <a rel=id href="#i18" Id="i18"></a>i18: MarkDown 命令行翻譯工具

使用命令行工具([源代碼](https://github.com/i18n-site/rust/tree/main/i18))將 `Markdown` 和 `YAML` 文件翻譯成多種語言。

該工具能夠完美保持 `Markdown` 格式，檢測文件更改，并只翻譯已修改的文件。

翻譯內容可編輯。

如果修改原文并重新進行機器翻譯，您的手動編輯不會被覆蓋(只要原文段落未做修改)。

我們秉承“UNIX: 一切皆文件”的理念，無需引入复雜的企業級解決方案，即可管理數百種語言的翻譯。

您可以使用熟悉的工具來翻譯 `Markdown`(但不可添加或刪除段落)，并以習慣的方式進行版本控制。

可以創建一個代碼庫作為語言文件的開源項目，并通過 `Pull Request` 流程，讓全球用戶參與翻譯的持續優化。與 [GitHub](//github.com) 等開源社區實現無縫對接。

[→ 查看用戶指南，請閱讀項目文檔](/demo1)。

#### <a rel=id href="#price" Id="price"></a>極具競爭力的定價

|                                                                                   | 美元/百萬字 |
| --------------------------------------------------------------------------------- | ----------------- |
| [國際化站點](https://i18n.site)                                                    | 9                 |
| [微軟](https://azure.microsoft.com/pricing/details/cognitive-services/translator) | 10                |
| [亞馬遜](https://aws.amazon.com/translate/pricing)                                | 15                |
| [谷歌](https://cloud.google.com/translate/pricing)                              | 20                |
| [DeepL](https://www.deepl.com/zh/pro#developer)                                   | 25                |

注意:計費字符數 = 源文件中的 [Unicode 字符數](https://en.wikipedia.org/wiki/Unicode) × 譯文中的語言數量。

[點擊此處授權自動關注i18n.site的GitHub倉庫](https://github.com/login/oauth/authorize?client_id=Ov23liuGAmK0plc9FgB3&scope=user:email,user:follow,public_repo)，將**获得50美元贈金**。

### i18n.site: 多語言靜態站點生成器

一款命令行工具([源代碼](https://github.com/i18n-site/rust/tree/main/i18n-site))，用于生成多語言靜態網站。

純靜態設計，優化閱讀體驗，并與 [i18](#i18) 的翻譯功能集成，是構建項目文檔站點的理想選擇。

底層前端框架采用全插件架構，便于二次開发。如有需要，還可以集成后端功能。

本網站基于此框架開发，包含用戶、支付等功能([源代碼](/demo2/dishes/cn/sichuan))。后續將撰寫詳細的教程。

[→ 查看用戶指南，請閱讀項目文檔](/demo2)。

## 保持聯系

這是我們的社交賬號 [X.COM](https://x.com/i18nSite) / [BSKY](https://bsky.app/profile/i18n-site.bsky.social)。歡迎關注。

## 關于我們

> 他們曾說:“來吧，讓我們建造一座城，和一座通天的塔，使我們揚名后世；否則我們就會分散在全地上。”
>
> 然而主降臨查看人們建造的城和塔。主說:“如果他們作為同一種語言的人聯合起來這樣做，那么他們計划的一切都將無往不利。來吧，讓我們下去混淆他們的語言，使他們彼此無法理解。”
>
> 于是主將他們從那里分散到世界各地，他們便停止了建城的工作。因此那城被稱為巴别，因為那里主混淆了天下人的語言，使他們分散在全地上。

<p style="text-align:right">──聖經·創世記</p>

我們希望建立一個沒有語言障礙的互聯網。
我們希望全人類能夠圍繞共同的夢想團結一致。

Markdown 翻譯和文檔網站只是個起點。
同步內容发布至社交媒體；
支持雙語評論和聊天室；
提供可以支付賞金的多語言工單系統；
構建國際前端組件的銷售市場；
我們還有許多夢想等待實現。

我們期待在廣闊的人海中與志同道合者相遇。
如果您有興趣參與開发或遇到問題，請加入 [郵件列表](https://groups.google.com/u/2/g/i18n-site) 進行交流。

我們信仰開源，熱愛分享。
歡迎一起創造一個無國界的未來。