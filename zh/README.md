<h1 style="display:flex;justify-content:space-between">i18n.site ⋅ 演示网站<img src="//p.3ti.site/logo.svg" style="user-select:none;margin-top:-1px;width:42px"></h1>

这是一个用于学习 i18n.site 的演示网站。

[`i18n.site`](https://i18n.site/i18n.site) 是一个多语言网站构建工具。

---

命令行 `MarkDown` & `Yaml` 翻译工具，帮助您构建多语言文档网站，支持数百种语言...

<pre class="langli" style="display:flex;flex-wrap:wrap;background:transparent;border:1px solid #eee;font-size:12px;box-shadow:0 0 3px inset #eee;padding:12px 5px 4px 12px;justify-content:space-between;"><style>pre.langli i{font-weight:300;font-family:s;margin-right:2px;margin-bottom:8px;font-style:normal;color:#666;border-bottom:1px dashed #ccc;}</style><i>English</i><i>简体中文</i><i>Deutsch</i><i>Français</i><i>Español</i><i>Italiano</i><i>日本語</i><i>Polski</i><i>Português(Brasil)</i><i>Русский</i><i>Nederlands</i><i>Türkçe</i><i>Svenska</i><i>Čeština</i><i>Українська</i><i>Magyar</i><i>Indonesia</i><i>한국어</i><i>Română</i><i>Norsk</i><i>Slovenčina</i><i>Suomi</i><i>العربية</i><i>Català</i><i>Dansk</i><i>فارسی</i><i>Tiếng Việt</i><i>Lietuvių</i><i>Hrvatski</i><i>עברית</i><i>Slovenščina</i><i>српски језик</i><i>Esperanto</i><i>Ελληνικά</i><i>Eesti</i><i>Български</i><i>ไทย</i><i>Haitian Creole</i><i>Íslenska</i><i>नेपाली</i><i>తెలుగు</i><i>Latine</i><i>Galego</i><i>हिन्दी</i><i>Cebuano</i><i>Melayu</i><i>Euskara</i><i>Bosnian</i><i>Letzeburgesch</i><i>Latviešu</i><i>ქართული</i><i>Shqip</i><i>मराठी</i><i>Azərbaycan</i><i>Македонски</i><i>Wikang Tagalog</i><i>Cymraeg</i><i>বাংলা</i><i>தமிழ்</i><i>Basa Jawa</i><i>Basa Sunda</i><i>Беларуская</i><i>Kurdî(Navîn)</i><i>Afrikaans</i><i>Frysk</i><i>Toğikī</i><i>اردو</i><i>Kichwa</i><i>മലയാളം</i><i>Kiswahili</i><i>Gaeilge</i><i>Uzbek(Latin)</i><i>Te Reo Māori</i><i>Èdè Yorùbá</i><i>ಕನ್ನಡ</i><i>አማርኛ</i><i>Հայերեն</i><i>অসমীয়া</i><i>Aymar Aru</i><i>Bamanankan</i><i>Bhojpuri</i><i>正體中文</i><i>Corsu</i><i>ދިވެހިބަސް</i><i>Eʋegbe</i><i>Filipino</i><i>Guarani</i><i>ગુજરાતી</i><i>Hausa</i><i>Hawaiian</i><i>Hmong</i><i>Ásụ̀sụ́ Ìgbò</i><i>Iloko</i><i>Қазақ Тілі</i><i>ខ្មែរ</i><i>Kinyarwanda</i><i>سۆرانی</i><i>Кыргызча</i><i>ລາວ</i><i>Lingála</i><i>Ganda</i><i>Maithili</i><i>Malagasy</i><i>Malti</i><i>монгол</i><i>မြန်မာ</i><i>ChiCheŵa</i><i>ଓଡ଼ିଆ</i><i>Afaan Oromoo</i><i>پښتو</i><i>ਪੰਜਾਬੀ</i><i>Gagana Sāmoa</i><i>Sanskrit</i><i>Sesotho sa Leboa</i><i>Sesotho</i><i>chiShona</i><i>سنڌي</i><i>සිංහල</i><i>Soomaali</i><i>Татар</i><i>ትግር</i><i>Xitsonga</i><i>Türkmen Dili</i><i>Akan</i><i>isiXhosa</i><i>ייִדיש</i><i>Isi-Zulu</i></pre>

## 序言

互联网消除了物理距离，但语言障碍却依然阻碍着人类的团结。

尽管浏览器内置了翻译功能，搜索引擎仍然无法跨语言检索。

通过社交媒体和电子邮件，人们习惯于关注使用母语的信息源。

在信息爆炸和全球市场的时代，**支持多语言是一项基础技能**。

即便是面向更广泛受众的个人开源项目，也应从一开始就考虑国际化。

## <a rel=id href="#project" Id="project"></a>项目简介

本站目前提供两款开源命令行工具:

* [i18: MarkDown 命令行翻译工具](/demo1)
* [i18n.site: 多语言静态网站生成器](/demo2)

### <a rel=id href="#i18" Id="i18"></a>i18: MarkDown 命令行翻译工具

使用命令行工具([源代码](https://github.com/i18n-site/rust/tree/main/i18))将 `Markdown` 和 `YAML` 文件翻译成多种语言。

该工具能够完美保持 `Markdown` 格式，检测文件更改，并只翻译已修改的文件。

翻译内容可编辑。

如果修改原文并重新进行机器翻译，您的手动编辑不会被覆盖(只要原文段落未做修改)。

我们秉承“UNIX: 一切皆文件”的理念，无需引入复杂的企业级解决方案，即可管理数百种语言的翻译。

您可以使用熟悉的工具来翻译 `Markdown`(但不可添加或删除段落)，并以习惯的方式进行版本控制。

可以创建一个代码库作为语言文件的开源项目，并通过 `Pull Request` 流程，让全球用户参与翻译的持续优化。与 [GitHub](//github.com) 等开源社区实现无缝对接。

[→ 查看用户指南，请阅读项目文档](/demo1)。

#### <a rel=id href="#price" Id="price"></a>极具竞争力的定价

|                                                                                   | 美元/百万字 |
| --------------------------------------------------------------------------------- | ----------------- |
| [国际化站点](https://i18n.site)                                                    | 9                 |
| [微软](https://azure.microsoft.com/pricing/details/cognitive-services/translator) | 10                |
| [亚马逊](https://aws.amazon.com/translate/pricing)                                | 15                |
| [谷歌](https://cloud.google.com/translate/pricing)                              | 20                |
| [DeepL](https://www.deepl.com/zh/pro#developer)                                   | 25                |

注意:计费字符数 = 源文件中的 [Unicode 字符数](https://en.wikipedia.org/wiki/Unicode) × 译文中的语言数量。

[点击此处授权自动关注i18n.site的GitHub仓库](https://github.com/login/oauth/authorize?client_id=Ov23liuGAmK0plc9FgB3&scope=user:email,user:follow,public_repo)，将**获得50美元赠金**。

### i18n.site: 多语言静态站点生成器

一款命令行工具([源代码](https://github.com/i18n-site/rust/tree/main/i18n-site))，用于生成多语言静态网站。

纯静态设计，优化阅读体验，并与 [i18](#i18) 的翻译功能集成，是构建项目文档站点的理想选择。

底层前端框架采用全插件架构，便于二次开发。如有需要，还可以集成后端功能。

本网站基于此框架开发，包含用户、支付等功能([源代码](/demo2/dishes/cn/sichuan))。后续将撰写详细的教程。

[→ 查看用户指南，请阅读项目文档](/demo2)。

## 保持联系

这是我们的社交账号 [X.COM](https://x.com/i18nSite) / [BSKY](https://bsky.app/profile/i18n-site.bsky.social)。欢迎关注。

## 关于我们

> 他们曾说:“来吧，让我们建造一座城，和一座通天的塔，使我们扬名后世；否则我们就会分散在全地上。”
>
> 然而主降临查看人们建造的城和塔。主说:“如果他们作为同一种语言的人联合起来这样做，那么他们计划的一切都将无往不利。来吧，让我们下去混淆他们的语言，使他们彼此无法理解。”
>
> 于是主将他们从那里分散到世界各地，他们便停止了建城的工作。因此那城被称为巴别，因为那里主混淆了天下人的语言，使他们分散在全地上。

<p style="text-align:right">──圣经·创世记</p>

我们希望建立一个没有语言障碍的互联网。
我们希望全人类能够围绕共同的梦想团结一致。

Markdown 翻译和文档网站只是个起点。
同步内容发布至社交媒体；
支持双语评论和聊天室；
提供可以支付赏金的多语言工单系统；
构建国际前端组件的销售市场；
我们还有许多梦想等待实现。

我们期待在广阔的人海中与志同道合者相遇。
如果您有兴趣参与开发或遇到问题，请加入 [邮件列表](https://groups.google.com/u/2/g/i18n-site) 进行交流。

我们信仰开源，热爱分享。
欢迎一起创造一个无国界的未来。