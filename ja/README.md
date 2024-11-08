<h1 style="display:flex;justify-content:space-between">i18n.site ⋅ デモ Web サイト<img src="//p.3ti.site/logo.svg" style="user-select:none;margin-top:-1px;width:42px"></h1>

これは、i18n.site を学習するためのデモ Web サイトです。

[`i18n.site`](https://i18n.site/i18n.site) は、多言語 Web サイト構築ツールです。

---

コマンド ライン `MarkDown` & `Yaml` 翻訳ツールは、数百の言語をサポートする国際的なドキュメント サイトの構築に役立ちます...

<pre class="langli" style="display:flex;flex-wrap:wrap;background:transparent;border:1px solid #eee;font-size:12px;box-shadow:0 0 3px inset #eee;padding:12px 5px 4px 12px;justify-content:space-between;"><style>pre.langli i{font-weight:300;font-family:s;margin-right:2px;margin-bottom:8px;font-style:normal;color:#666;border-bottom:1px dashed #ccc;}</style><i>English</i><i>简体中文</i><i>Deutsch</i><i>Français</i><i>Español</i><i>Italiano</i><i>日本語</i><i>Polski</i><i>Português(Brasil)</i><i>Русский</i><i>Nederlands</i><i>Türkçe</i><i>Svenska</i><i>Čeština</i><i>Українська</i><i>Magyar</i><i>Indonesia</i><i>한국어</i><i>Română</i><i>Norsk</i><i>Slovenčina</i><i>Suomi</i><i>العربية</i><i>Català</i><i>Dansk</i><i>فارسی</i><i>Tiếng Việt</i><i>Lietuvių</i><i>Hrvatski</i><i>עברית</i><i>Slovenščina</i><i>српски језик</i><i>Esperanto</i><i>Ελληνικά</i><i>Eesti</i><i>Български</i><i>ไทย</i><i>Haitian Creole</i><i>Íslenska</i><i>नेपाली</i><i>తెలుగు</i><i>Latine</i><i>Galego</i><i>हिन्दी</i><i>Cebuano</i><i>Melayu</i><i>Euskara</i><i>Bosnian</i><i>Letzeburgesch</i><i>Latviešu</i><i>ქართული</i><i>Shqip</i><i>मराठी</i><i>Azərbaycan</i><i>Македонски</i><i>Wikang Tagalog</i><i>Cymraeg</i><i>বাংলা</i><i>தமிழ்</i><i>Basa Jawa</i><i>Basa Sunda</i><i>Беларуская</i><i>Kurdî(Navîn)</i><i>Afrikaans</i><i>Frysk</i><i>Toğikī</i><i>اردو</i><i>Kichwa</i><i>മലയാളം</i><i>Kiswahili</i><i>Gaeilge</i><i>Uzbek(Latin)</i><i>Te Reo Māori</i><i>Èdè Yorùbá</i><i>ಕನ್ನಡ</i><i>አማርኛ</i><i>Հայերեն</i><i>অসমীয়া</i><i>Aymar Aru</i><i>Bamanankan</i><i>Bhojpuri</i><i>正體中文</i><i>Corsu</i><i>ދިވެހިބަސް</i><i>Eʋegbe</i><i>Filipino</i><i>Guarani</i><i>ગુજરાતી</i><i>Hausa</i><i>Hawaiian</i><i>Hmong</i><i>Ásụ̀sụ́ Ìgbò</i><i>Iloko</i><i>Қазақ Тілі</i><i>ខ្មែរ</i><i>Kinyarwanda</i><i>سۆرانی</i><i>Кыргызча</i><i>ລາວ</i><i>Lingála</i><i>Ganda</i><i>Maithili</i><i>Malagasy</i><i>Malti</i><i>монгол</i><i>မြန်မာ</i><i>ChiCheŵa</i><i>ଓଡ଼ିଆ</i><i>Afaan Oromoo</i><i>پښتو</i><i>ਪੰਜਾਬੀ</i><i>Gagana Sāmoa</i><i>Sanskrit</i><i>Sesotho sa Leboa</i><i>Sesotho</i><i>chiShona</i><i>سنڌي</i><i>සිංහල</i><i>Soomaali</i><i>Татар</i><i>ትግር</i><i>Xitsonga</i><i>Türkmen Dili</i><i>Akan</i><i>isiXhosa</i><i>ייִדיש</i><i>Isi-Zulu</i></pre>

## 序文

インターネットによって物理的な距離はなくなりましたが、言語の壁は依然として人間の団結を妨げています。

ブラウザには翻訳機能が組み込まれていますが、検索エンジンは言語をまたいでクエリを実行することはできません。

ソーシャル メディアや電子メールにより、人々は母国語での情報ソースに注目することに慣れています。

情報爆発とグローバル市場の時代において、**複数の言語をサポートすることは基本的なスキルです**。

より幅広いユーザーを対象とした個人のオープンソース プロジェクトであっても、最初から国際化を考慮する必要があります。

## <a rel=id href="#project" Id="project"></a>プロジェクトの説明

このサイトでは現在、次の 2 つのオープン ソース コマンド ライン ツールを提供しています

* [i18: MarkDown コマンドライン変換ツール](/demo1)
* [i18n.site: 多言語静的 Web サイト ジェネレーター](/demo2)

### <a rel=id href="#i18" Id="i18"></a>i18: MarkDown コマンドライン変換ツール

コマンド ライン ツール ([ソース コード](https://github.com/i18n-site/rust/tree/main/i18)) を使用して `Markdown` および `YAML` ファイルを複数の言語に翻訳します。

このツールは `Markdown` の形式を完全に維持し、ファイルの変更を検出し、変更されたファイルのみを変換します。

翻訳は編集可能です。

元のテキストを変更して機械翻訳を再実行した場合、手動で編集した翻訳内容は上書きされません (段落の元のテキストが変更されていない場合)。

私たちは「UNIX: すべてはファイルである」という哲学を共有しており、複雑で面倒なエンタープライズレベルのソリューションを導入することなく、数百の言語の翻訳を管理できます。

最も使い慣れたツールを使用して `Markdown` を翻訳したり (段落の追加や削除はできません)、最も使い慣れた方法でバージョン管理を行うことができます。

コード ベースは言語ファイルのオープン ソースとして作成でき、 `Pull Request` プロセスの助けを借りて、全球のユーザーが翻訳の継続的な最適化に参加できます。 [GitHub](//github.com) など、他のオープン ソース コミュニティとのシームレスな接続。

[→ ユーザーガイドについては、プロジェクトドキュメントをお読みください](/demo1)。

#### <a rel=id href="#price" Id="price"></a>非常に競争力のある価格設定

|                                                                                   | USD/100万ワード |
| --------------------------------------------------------------------------------- | ----------------- |
| [i18n.サイト](https://i18n.site)                                                    | 9                 |
| [マイクロソフト](https://azure.microsoft.com/pricing/details/cognitive-services/translator) | 10                |
| [アマゾン](https://aws.amazon.com/translate/pricing)                                | 15                |
| [グーグル](https://cloud.google.com/translate/pricing)                              | 20                |
| [ディープL](https://www.deepl.com/zh/pro#developer)                                   | 25                |

注: 課金対象の文字数 = ソース ファイル内の [Unicode の数](https://en.wikipedia.org/wiki/Unicode) × 翻訳内の言語の数。

[ここをクリックして、i18n.site の GitHub リポジトリを自動的にフォローすることを承認すると](https://github.com/login/oauth/authorize?client_id=Ov23liuGAmK0plc9FgB3&amp;scope=user:email,user:follow,public_repo)、 **50 ドルのボーナスを受け取り**ます。

### i18n.site: 多言語静的サイト ジェネレーター

多言語の静的サイトを生成するコマンド ライン ツール ([ソース コード](https://github.com/i18n-site/rust/tree/main/i18n-site))。

純粋に静的で、閲覧エクスペリエンスに最適化され、 [i18](#i18) の翻訳と統合されているため、プロジェクト ドキュメント サイトを構築するのに最適です。

基盤となるフロントエンド フレームワークは完全なプラグイン アーキテクチャを採用しており、二次開発が容易です。必要に応じて、バックエンド機能を統合できます。

この Web サイトはこのフレームワークに基づいて開発されており、ユーザー機能、決済機能、その他の機能([ソースコード](/demo2/dishes/cn/sichuan))が含まれています。詳しいチュートリアルは後ほど書きます。

[→ ユーザーガイドについては、プロジェクトドキュメントをお読みください](/demo2)。

## 連絡を取り合う

これは当社のソーシャル アカウント [X.COM](https://x.com/i18nSite) / [BSKY](https://bsky.app/profile/i18n-site.bsky.social)。フォロー歓迎です。

## 当社について

> 彼らは言った、「さあ、天まで届く塔のある都市を建てて名を上げましょう。そうでなければ、私たちは全地に散らばってしまいます。」
>
> しかし、主は町と人々が建てている塔を見るために下って来られました。主は言われました、「同じ言語を話す一人の人々として彼らがこのようなことを始めたなら、彼らがしようとしているすべてのことは彼らにとって不可能ではありません。さあ、私たちは下って彼らの言語を混乱させて、彼らがお互いを理解できないようにしましょう。」
>
> そこで主は彼らをそこから全地に散らし、彼らは都市を建設するのをやめた。それが、それがバベルと呼ばれた理由です。主がそこで全世界の言語を混乱させたからです。そこから主は彼らを全地の表面に散らされました。

<p style="text-align:right">──聖書・創世記</p>

私たちは言語の壁のないインターネットを構築したいと考えています。
私たちは、全人類が共通の夢に向かって団結することを願っています。

Markdown 翻訳およびドキュメント サイトは始まりにすぎません。
コンテンツのソーシャルメディアへの投稿を同期します
バイリンガルのコメントとチャット ルームをサポートします
報奨金を支払うことができる多言語チケット システム
国際的なフロントエンドコンポーネントの販売市場
私たちが手がかりたいことはまだまだ多くあります。

私たちは人類という広大な海で同じ志を持った人々と出会えることを楽しみにしています。
開発に参加することに興味がある場合、または問題が発生した場合は、[メーリング リスト](https://groups.google.com/u/2/g/i18n-site)に参加して連絡してください。

私たちはオープンソースを信じており、共有することが大好きです。
一緒にボーダーレスな未来を切り開きましょう。