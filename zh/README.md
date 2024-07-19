<h1 style="display:flex;justify-content:space-between">i18n.site ⋅ 演示网站<img src="//p.3ti.site/logo.svg" style="user-select:none;margin-top:-1px;width:42px"></h1>

这是一个学习 i18n.site 的演示网站。

[`i18n.site`](https://i18n.site/i18n.site)是多语言的网站构建工具。

---

命令行`MarkDown` & `Yaml`翻译工具，帮助您建立国际文档网站，支持数百种语言...

<pre class="langli" style="display:flex;flex-wrap:wrap;background:transparent;border:1px solid #eee;font-size:12px;box-shadow:0 0 3px inset #eee;padding:12px 5px 4px 12px;justify-content:space-between;"><style>pre.langli i{font-weight:300;font-family:s;margin-right:2px;margin-bottom:8px;font-style:normal;color:#666;border-bottom:1px dashed #ccc;}</style><i>English</i><i>简体中文</i><i>Deutsch</i><i>Français</i><i>Español</i><i>Italiano</i><i>日本語</i><i>Polski</i><i>Português(Brasil)</i><i>Русский</i><i>Nederlands</i><i>Türkçe</i><i>Svenska</i><i>Čeština</i><i>Українська</i><i>Magyar</i><i>Indonesia</i><i>한국어</i><i>Română</i><i>Norsk</i><i>Slovenčina</i><i>Suomi</i><i>العربية</i><i>Català</i><i>Dansk</i><i>فارسی</i><i>Tiếng Việt</i><i>Lietuvių</i><i>Hrvatski</i><i>עברית</i><i>Slovenščina</i><i>српски језик</i><i>Esperanto</i><i>Ελληνικά</i><i>Eesti</i><i>Български</i><i>ไทย</i><i>Haitian Creole</i><i>Íslenska</i><i>नेपाली</i><i>తెలుగు</i><i>Latine</i><i>Galego</i><i>हिन्दी</i><i>Cebuano</i><i>Melayu</i><i>Euskara</i><i>Bosnian</i><i>Letzeburgesch</i><i>Latviešu</i><i>ქართული</i><i>Shqip</i><i>मराठी</i><i>Azərbaycan</i><i>Македонски</i><i>Wikang Tagalog</i><i>Cymraeg</i><i>বাংলা</i><i>தமிழ்</i><i>Basa Jawa</i><i>Basa Sunda</i><i>Беларуская</i><i>Kurdî(Navîn)</i><i>Afrikaans</i><i>Frysk</i><i>Toğikī</i><i>اردو</i><i>Kichwa</i><i>മലയാളം</i><i>Kiswahili</i><i>Gaeilge</i><i>Uzbek(Latin)</i><i>Te Reo Māori</i><i>Èdè Yorùbá</i><i>ಕನ್ನಡ</i><i>አማርኛ</i><i>Հայերեն</i><i>অসমীয়া</i><i>Aymar Aru</i><i>Bamanankan</i><i>Bhojpuri</i><i>正體中文</i><i>Corsu</i><i>ދިވެހިބަސް</i><i>Eʋegbe</i><i>Filipino</i><i>Guarani</i><i>ગુજરાતી</i><i>Hausa</i><i>Hawaiian</i><i>Hmong</i><i>Ásụ̀sụ́ Ìgbò</i><i>Iloko</i><i>Қазақ Тілі</i><i>ខ្មែរ</i><i>Kinyarwanda</i><i>سۆرانی</i><i>Кыргызча</i><i>ລາວ</i><i>Lingála</i><i>Ganda</i><i>Maithili</i><i>Malagasy</i><i>Malti</i><i>монгол</i><i>မြန်မာ</i><i>ChiCheŵa</i><i>ଓଡ଼ିଆ</i><i>Afaan Oromoo</i><i>پښتو</i><i>ਪੰਜਾਬੀ</i><i>Gagana Sāmoa</i><i>Sanskrit</i><i>Sesotho sa Leboa</i><i>Sesotho</i><i>chiShona</i><i>سنڌي</i><i>සිංහල</i><i>Soomaali</i><i>Татар</i><i>ትግር</i><i>Xitsonga</i><i>Türkmen Dili</i><i>Akan</i><i>isiXhosa</i><i>ייִדיש</i><i>Isi-Zulu</i></pre>

## 前言

互联网消除了物理距离，但语言障碍仍然阻碍着人类的团结。

尽管浏览器内置了翻译，但搜索引擎仍然无法跨语言查询。

通过社交媒体和电子邮件，人们习惯于关注使用自己语言的信息源。

在信息爆炸和全球市场的时代，**支持多种语言是一项基本技能**。

即使是针对更广泛受众的个人开源项目也应该从一开始就考虑国际化。

## <a rel=id href="#project" Id="project"></a>项目介绍

该站点目前提供两个开源命令行工具:

* [i18:MarkDown 命令行翻译工具](/demo1)
* [i18n.site:多语言静态网站生成器](/demo2)

### <a rel=id href="#i18" Id="i18"></a>i18:MarkDown 命令行翻译工具

翻译`Markdown`和`YAML`使用命令行工具（[源代码](https://github.com/i18n-site/rust/tree/main/i18)）将文件转换为多种语言。

该工具完美地保持了`Markdown`的格式。 ，检测文件修改，并且仅翻译更改的文件。

翻译是可编辑的。

如果您修改原文并重新运行机器翻译，您对翻译的手动编辑将不会被覆盖（如果该段落的原文尚未修改）。

我们共享“UNIX:一切皆文件”的理念，可以管理数百种语言的翻译，而无需引入复杂而繁琐的企业级解决方案。

您可以使用最熟悉的工具来翻译`Markdown` （但不能添加或删除段落）并使用最熟悉的方式进行版本控制。

可以将代码库创建为语言文件的开源代码，并借助`Pull Request`过程中，全球用户可以参与翻译的持续优化。与[GitHub](//github.com)等开源社区无缝连接。

[→ 有关用户指南，请阅读项目文档](/demo1)。

#### <a rel=id href="#price" Id="price"></a>极具竞争力的定价

|                                                                                   | 美元/百万字 |
| --------------------------------------------------------------------------------- | ----------------- |
| [国际化网站](https://i18n.site)                                                    | 9                 |
| [微软](https://azure.microsoft.com/pricing/details/cognitive-services/translator) | 10                |
| [亚马逊](https://aws.amazon.com/translate/pricing)                                | 15                |
| [谷歌](https://cloud.google.com/translate/pricing)                              | 20                |
| [深L](https://www.deepl.com/zh/pro#developer)                                   | 25                |

注:计费字符数 = 源文件中的[Unicode 数量](https://en.wikipedia.org/wiki/Unicode)× 译文中的语言数量。

### i18n.site:多语言静态站点生成器

用于生成多语言静态站点的命令行工具（[源代码](https://github.com/i18n-site/rust/tree/main/i18n-site)）。

纯静态，针对阅读体验进行优化，并与[i18](#i18)的翻译集成，是构建项目文档站点的最佳选择。

底层前端框架采用全插件架构，易于二次开发。如果需要，可以集成后端功能。

本网站是基于该框架开发的，包含用户、支付等功能（[源码](/demo2/dishes/cn/sichuan)）。后面会写详细的教程。

[→ 有关用户指南，请阅读项目文档](/demo2)。

## 保持联系

这是我们的社交帐户[X.COM/BSKY](https://x.com/i18nSite) [。](https://bsky.app/profile/i18n-site.bsky.social)欢迎关注我们。

## 关于我们

> 他们说:“来吧，我们要建造一座城，和一座通天的塔，好让我们扬名，否则我们就会分散在全地上。”
>
> 但主降临，要看看人们正在建造的城和塔。主说:“如果作为一个说同一种语言的人开始这样做，那么他们计划做的事情对他们来说都是不可能的。来吧，让我们下去混淆他们的语言，这样他们就不会互相理解。 ”
>
> 于是主将他们从那里分散到全地，他们就停止建造那城了。这就是为什么它被称为巴别塔——因为主在那里混淆了全世界的语言。主从那里将他们分散到全地上。

<p style="text-align:right">──圣经·创世记</p>

我们希望建立一个没有语言障碍的互联网。
我们希望全人类怀着共同的梦想走到一起。

Markdown 翻译和文档网站只是一个开始。
将内容发布同步到社交媒体；
支持双语评论和聊天室；
可以支付赏金的多语言票务系统；
国际前端零部件销售市场；
我们想做的还有很多。

我们期待在茫茫人海中遇见志同道合的人。
如果您有兴趣参与开发或者遇到问题，请加入[邮件列表](https://groups.google.com/u/2/g/i18n-site)进行交流。

我们相信开源并热爱分享。
欢迎携手共创无国界未来。

