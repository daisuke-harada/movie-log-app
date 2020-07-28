Movie.seed do |s|
  s.id = 1
  s.title = "アベンジャーズ エンドゲーム"
  s.summary = "最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。"
  s.movie_image = Rails.root.join("db/fixtures/movies/avengers_endgame.jpg").open
  s.a_movie_released = "2019年4月26日"
  s.show_time = "181分"
  s.supervisers_attributes = [
    {superviser_name: 'アンソニー・ルッソ'},
    {superviser_name: 'ジョー・ルッソ'}
  ]
  s.actors_attributes = [
    {actor_name: 'ロバート・ダウニーJr'},
    {actor_name: 'クリス・エヴァンズ'},
    {actor_name: 'マーク・ラファロ'},
    {actor_name: 'クリス・ヘムズワース'},
    {actor_name: 'スカーレット・ヨハンソン'},
    {actor_name: 'ジェレミー・レナー'},
    {actor_name: 'ドン・チードル'},
    {actor_name: 'ポール・ラッド'},
    {actor_name: 'ベネディクト・カーンバッチ'},
    {actor_name: 'チャドウィック・ボーズマン'}
  ]

  s.writers_attributes = [
    {writer_name: 'クリストファー・マルクス'},
    {writer_name: 'スティーヴン・マクフィーリー'}
  ]
end

Movie.seed do |s|
  s.id = 2
  s.title = "イエスマン"
  s.summary = "何事にも「ノー」「嫌だ」「パス」と答える極めて後ろ向きの男、カール。 「生き方を変えない限り、お前はひとりぼっちになる」と脅され、 勇気を振り絞り、とあるセミナーに参加する。“意味のある人生を送るための、唯一のルール”は、全てのことに、それがどんな事であっても「イエス」と言うだけ。カールは何事も否定せず「イエス」を連発する。"
  s.movie_image = Rails.root.join("db/fixtures/movies/yesman.jpg").open
  s.a_movie_released = "2009年3月20日"
  s.show_time = "104分"
  s.supervisers_attributes = [
    {superviser_name: 'ペイトン・リード'}
  ]
  s.actors_attributes =  [
    {actor_name: 'ジム・キャリー'},
    {actor_name: 'ズーイー・デシャネル'},
    {actor_name: 'ブラッドリー・クーパー'},
    {actor_name: 'ジョン・マイケル・ヒギンズ'},
    {actor_name: 'テレンス・スタンプ'},
  ]
  s.writers_attributes = [
    {writer_name: 'ニコラス・ストーラー'},
    {writer_name: 'ジャレッド・ポール'},
    {writer_name: 'アンドリュー・モーゲル'}
  ]
end

Movie.seed do |s|
  s.id = 3
  s.title = "きみに読む物語"
  s.summary = "療養生活を送る老婦人(ジーナ・ローランズ)の元に、足繁く通う老人(ジェームズ・ガーナー)が、物語を読み聞かせる。 それは、1940年の夏、南部の小さな町で始まる物語。休暇を過ごしに都会からやって来た17歳の令嬢・アリー(レイチェル・マクアダムス)は、地元の製材所で働く青年ノア(ライアン・ゴズリング)と出逢い、恋に落ちる。 けれど、娘の将来を案じる両親に交際を阻まれ、都会へ連れ戻されてしまう。"
  s.movie_image = Rails.root.join("db/fixtures/movies/the_notebook.jpg").open
  s.a_movie_released = "2005年02月05日"
  s.show_time = "123分"
  s.supervisers_attributes = [
    {superviser_name: 'ニック・カサヴェテス'}
  ]
  s.actors_attributes =  [
    {actor_name: 'ライアン・ゴズリング'},
    {actor_name: 'レイチェル・マクアダムス'},
    {actor_name: 'ジーナ・ローランズ'},
    {actor_name: 'ジェームズ・ガーナー'},
    {actor_name: 'ジョーン・アレン'},
    {actor_name: 'ジェームズ・マースデン'},
  ]
  s.writers_attributes =[
    {writer_name: 'ジャン・サルディ'},
    {writer_name: 'ジェレミー・レヴェン'}
  ]
end

Movie.seed do |s|
  s.id = 4
  s.title = "ダイハード"
  s.summary = "クリスマス・イブの夜、LAのハイテクビルを最新兵器で武装した謎のテロリスト集団が襲った！　彼らの要求を拒んだ重役達は即座に射殺。なすすべも無く怯える人質たち。ビルの中にいた非番警官ジョン・マクレーンは外部との連絡が一切遮断された中、ただ一人命をかけた闘いを挑んだ！"
  s.movie_image = Rails.root.join("db/fixtures/movies/die_hard.jpg").open
  s.a_movie_released = "1989年02月04日"
  s.show_time = "131分"
  s.supervisers_attributes = [
    {superviser_name: 'ジョン・マクティアナン'}
  ]
  s.actors_attributes = [
    {actor_name: 'ブルース・ウィリス'},
    {actor_name: 'アラン・リックマン'},
    {actor_name: 'ボニー・ベデリア'},
    {actor_name: 'アレクサンダー・ゴドノフ'},
    {actor_name: 'レジナルド・ヴェルジョンソン'}
  ]
  s.writers_attributes =[
    {writer_name: 'ジェブ・スチュアート'},
    {writer_name: 'スティーヴン・E・デ・スーザ'}
  ]
end

Movie.seed do |s|
  s.id = 5
  s.title = "君の名は"
  s.summary = "千年ぶりとなる彗星の来訪を一か月後に控えた日本。山深い田舎町に暮らす女子高校生・三葉は憂鬱な毎日を過ごしていた。町長である父の選挙運動に、家系の神社の古き風習。小さく狭い町で、周囲の目が余計に気になる年頃だけに、都会への憧れを強くするばかり。「来世は東京のイケメン男子にしてくださーーーい！！！」そんなある日、自分が男の子になる夢を見る。見慣れない部屋、見知らぬ友人、戸惑いながらも、念願だった都会での生活を思いっきり満喫する三葉。「不思議な夢……。」一方、東京で暮らす男子高校生、瀧も、奇妙な夢を見た。行ったこともない山奥の町で、自分が女子高校生になっているのだー。彼らが体験した夢の秘密とは？"
  s.movie_image = Rails.root.join("db/fixtures/movies/your_name.jpg").open
  s.a_movie_released = "2016年08月26日"
  s.show_time = "107分"
  s.supervisers_attributes = [
    {superviser_name: '新海誠'}
  ]
  s.actors_attributes = [
    {actor_name: '神木隆之介'},
    {actor_name: '上白石萌音'},
    {actor_name: '長澤まさみ'},
    {actor_name: '市原悦子'},
    {actor_name: '成田凌'},
    {actor_name: '悠木碧'}
  ]
  s.writers_attributes = [
    {writer_name: '新海誠'}
  ]
end

Movie.seed do |s|
  s.id = 6
  s.title = "風立ちぬ"
  s.summary = ""
  s.movie_image = Rails.root.join("db/fixtures/movies/kazetatinu.jpg").open
  s.a_movie_released = "2013年07月20日"
  s.show_time = "126分"
  s.supervisers_attributes = [
    {superviser_name: '宮崎駿'}
  ]
  s.actors_attributes = [
    {actor_name: '庵野秀明'},
    {actor_name: '瀧本美織'},
    {actor_name: '西島秀俊'},
    {actor_name: '西村まさ彦（西村雅彦）'},
    {actor_name: 'スティーブン・アルパート'}
  ]
  s.writers_attributes = [
    {writer_name: '宮崎駿'}
  ]
end

Movie.seed do |s|
  s.id = 7
  s.title = "スパイダーマン　ホームカミング"
  s.summary = "ニューヨーク。15歳のピーター・パーカーはスパイダーマンだ。部活のノリで街を救う、ヒーロー気取りの高校生。そんなピーターの能力を見出し、真のヒーローとしての“道”へと導こうとするのがアイアンマンことトニー・スターク。スタークに新しいスーツまで作ってもらい興奮するピーターは、自分の力を認めてもらおうと街に飛び出す日々。そんなある日、巨大な翼で飛行する怪物が街に突如現れる。ピーターはここぞとばかり、ニューヨークの平和のために怪物退治に乗り出そうとするが、スタークに「アベンジャーズに任せておけ」と止められてしまう。「ガキ扱いは、ゴメンだ！」とピーターはその忠告を聞かずに戦いに挑むが―。"
  s.movie_image = Rails.root.join("db/fixtures/movies/spiderman_homecoming.jpg").open
  s.a_movie_released = "2017年08月11日"
  s.show_time = "133分"
  s.supervisers_attributes = [
    {superviser_name: 'ジョン・ワッツ'}
  ]
  s.actors_attributes = [
    {actor_name: 'トム・ホランド'},
    {actor_name: 'マイケル・キートン'},
    {actor_name: 'ロバート・ダウニー・Jr'},
    {actor_name: 'マリサ・トメイ'},
    {actor_name: 'ジョン・ファブロー'}
  ]
  s.writers_attributes = [
    {writer_name: 'ジョン・フランシス・デイリー'}
  ]
end

Movie.seed do |s|
  s.id = 8
  s.title = "スパイダーマン　ファーフロムホーム"
  s.summary = "ホーム”であるニューヨークを離れ、舞台はヨーロッパへ。ピーター（トム・ホランド）は親友のネッド（ジェイコブ・バタロン）やMJ（ゼンデイヤ）たちと2週間の夏休み旅行へ出かける。
               そこでピーターの前に突如現れるのは、S.H.I.E.L.D.の長官、ニック・フューリー（サミュエル・L・ジャクソン）だ。「出番だぞ。私と共に戦う覚悟はあるか？」とピーターに告げるが・・。"
  s.movie_image = Rails.root.join("db/fixtures/movies/spiderman_farfromhome.jpg").open
  s.a_movie_released = "2019年06月28日"
  s.show_time = "130分"
  s.supervisers_attributes = [
    {superviser_name: 'ジョン・ワッツ'}
  ]
  s.actors_attributes = [
    {actor_name: 'トム・ホランド'},
    {actor_name: 'ゼンデイア'},
    {actor_name: 'ジェイコブ・バタラン'},
    {actor_name: 'ジェイク・ギレンホール'},
    {actor_name: 'ジョン・ファブロー'}
  ]
  s.writers_attributes =  [
    {writer_name: 'クリス・マケナ'},
    {writer_name: 'エリク・サマーズ'}
  ]
end

Movie.seed do |s|
  s.id = 9
  s.title = "フォレスト・ガンプ／一期一会"
  s.summary = "アカデミー作品賞をはじめ6部門を受賞したトム・ハンクス主演のヒューマン・ドラマ。人より知能指数は劣るものの純真な心を持ったガンプが、アメリカの激動の時代を駆け抜けた波乱万丈な人生を描く。"
  s.movie_image = Rails.root.join("db/fixtures/movies/forest_ganpu.jpg").open
  s.a_movie_released = "1995年03月11日"
  s.show_time = "142分"
  s.supervisers_attributes = [
    {superviser_name: 'ロバート・ゼメキス'}
  ]
  s.actors_attributes = [
    {actor_name: 'トム・ハンクス'},
    {actor_name: 'サリー・フィールド'},
    {actor_name: 'ロビン・ライト'},
    {actor_name: 'ゲイリー・シニーズ'},
    {actor_name: 'ミケルティ・ウィリアムソン'}
  ]
  s.writers_attributes = [
    {writer_name: 'エリック・ロス'}
  ]
end

Movie.seed do |s|
  s.id = 10
  s.title = "怒り"
  s.summary = "ある夏の暑い日に八王子で夫婦殺人事件が起こった。窓は閉め切られ、蒸し風呂状態の現場には、『怒』の血文字が残されていた。
               犯人は顔を整形し、全国に逃亡を続ける。その行方はいまだ知れず。事件から一年後。千葉と東京と沖縄に、素性の知れない３人の男が現れた。"
  s.movie_image = Rails.root.join("db/fixtures/movies/ikari.jpg").open
  s.a_movie_released = "2016年09月17日"
  s.show_time = "142分"
  s.supervisers_attributes = [
    {superviser_name: '李相日'}
  ]
  s.actors_attributes = [
    {actor_name: '渡辺謙'},
    {actor_name: '森山未來'},
    {actor_name: '松山ケンイチ'},
    {actor_name: '綾野剛'},
    {actor_name: '広瀬すず'},
    {actor_name: '宮崎あおい'}
  ]
  s.writers_attributes = [
    {writer_name: '李相日'}
  ]
end

Movie.seed do |s|
  s.id = 11
  s.title = "ダイ・ハード4.0"
  s.summary = "時間を全く感じさせない、 史上最強ノンストップ・アクション 全米震撼のサイバー・テロ発生に また、運の悪い男が帰ってくる！ 独立記念日の前夜。ワシントンDCのFBI本部に設置されたサイバー犯罪部に異変が起こった。あらゆる全米のインフラを監視するシステムに何者かがハッキングを仕掛けてきたのだ。そのころ、ニューヨーク市警統合テロ対策班のジョン・マクレーン警部補は、娘に会うために、管轄外であるニュージャージー州の大学に立ち寄っていた。その時、FBIから無線連絡が入る。これが不運の始まりだった――。"
  s.movie_image = Rails.root.join("db/fixtures/movies/die_hard4.jpg").open
  s.a_movie_released = "2007年06月29日"
  s.show_time = "129分"
  s.supervisers_attributes = [
    {superviser_name: 'レン・ワイズマン'}
  ]
  s.actors_attributes = [
    {actor_name: 'ブルース・ウィリス'},
    {actor_name: 'ジャスティン・ロング'},
    {actor_name: 'ティモシー・オリファント'},
    {actor_name: 'クリフ・カーティス'},
    {actor_name: 'マギー・Q'},
    {actor_name: 'シリル・ラファエリ'}
  ]
  s.writers_attributes = [
    {writer_name: 'マーク・ボンバック'}
  ]
end

Movie.seed do |s|
  s.id = 12
  s.title = "アベンジャーズ／インフィニティ・ウォー"
  s.summary = "６つすべてを手に入れると世界を滅ぼす無限大の力を得るインフィニティ・ストーン。その究極の力を秘めた石を狙う“最凶”にして最悪の敵＜ラスボス＞サノスを倒すため、アイアンマン、キャプテン・アメリカ、スパイダーマンら最強ヒーローチーム“アベンジャーズ”が集結。人類の命運をかけた壮絶なバトルの幕が開ける。果たして、彼らは人類を救えるのか？今、アベンジャーズ全滅へのカウントダウンが始まる！"
  s.movie_image = Rails.root.join("db/fixtures/movies/avengers_infinity_war.jpg").open
  s.a_movie_released = "2018年04月27日"
  s.show_time = "156分"
  s.supervisers_attributes = [
    {superviser_name: 'アンソニー・ルッソ'},
    {superviser_name: 'ジョー・ルッソ'}
  ]
  s.actors_attributes = [
    {actor_name: 'ロバート・ダウニーJr'},
    {actor_name: 'クリス・エヴァンズ'},
    {actor_name: 'マーク・ラファロ'},
    {actor_name: 'クリス・ヘムズワース'},
    {actor_name: 'スカーレット・ヨハンソン'},
    {actor_name: 'トム・ホランド'},
    {actor_name: 'ベネディクト・カンバーバッチ'},
    {actor_name: 'ポール・ラッド'},
    {actor_name: 'ベネディクト・カーンバッチ'},
    {actor_name: 'クリス・プラット'}
  ]
  s.writers_attributes = [
    {writer_name: 'クリストファー・マルクス'},
    {writer_name: 'スティーヴン・マクフィーリー'}
  ]
end

Movie.seed do |s|
  s.id = 13
  s.title = "ラ・ラ・ランド"
  s.summary = "夢追い人が集まる街、ロサンゼルス。映画スタジオのカフェで働くミア＜エマ・ストーン＞は女優を目指していたが、何度オーディションを受けても落ちてばかり。ある日、ミアは場末のバーでピアノを弾くセバスチャン＜ライアン・ゴズリング＞と出会う。彼はいつか自分の店を持ち、本格的なジャズを思う存分演奏したいと願っていた。やがて二人は恋におち、互いの夢を応援し合うが、セバスチャンが生活のために加入したバンドが成功したことから二人の心はすれ違い始める……。"
  s.movie_image = Rails.root.join("db/fixtures/movies/rararand.jpg").open
  s.a_movie_released = "2017年02月24日"
  s.show_time = "126分"
  s.supervisers_attributes = [
    {superviser_name: 'デイミアン・チャゼル'}
  ]
  s.actors_attributes = [
    {actor_name: 'ライアン・ゴズリング'},
    {actor_name: 'エマ・ストーン'},
    {actor_name: 'J・K・シモンズ'},
    {actor_name: 'フィン・ウィットロック'},
    {actor_name: 'ローズマリー・デウィット'},
    {actor_name: 'ミーガン・フェイ'}
  ]
  s.writers_attributes = [
    {writer_name: 'デイミアン・チャゼル'}
  ]
end

Movie.seed do |s|
  s.id = 14
  s.title = "アバウト・タイム 愛おしい時間について"
  s.summary = "イギリス南西部に住む青年ティムは、両親と妹、そして伯父の５人家族。どんな天気でも、海辺でピクニックを、週末は野外映画上映を楽しむ。風変りだけど仲良し家族。しかし、自分に自信のないティムは年頃になっても彼女ができずにいた。そして迎えた21歳の誕生日、一家に生まれた男たちにはタイムトラベル能力があることを父から知らされる。そんな能力に驚きつつも恋人ゲットのためにタイムトラベルを繰り返すようになるティム。弁護士を目指してロンドンへ移り住んでからは、チャーミングな女の子メアリーと出会い、恋に落ちる。ところが、タイムトラベルが引き起こす不運によって、二人の出会いはなかったことに！"
  s.movie_image = Rails.root.join("db/fixtures/movies/about_a_time.jpg").open
  s.a_movie_released = "2014年09月27日"
  s.show_time = "124分"
  s.supervisers_attributes = [
    {superviser_name: 'リチャード・カーティス'}
  ]
  s.actors_attributes = [
    {actor_name: 'ドーナル・グリーソン'},
    {actor_name: 'レイチェル・マクアダムス'},
    {actor_name: 'ビル・ナイ'},
    {actor_name: 'リディア・ウィルソン'},
    {actor_name: 'リンゼイ・ダンカン'},
    {actor_name: 'リチャード・コーデリー'}
  ]
  s.writers_attributes = [
    {writer_name: 'リチャード・カーティス'}
  ]
end

Movie.seed do |s|
  s.id = 15
  s.title = "ハクソー・リッジ"
  s.summary = "人を殺めてはいけない。そう強く心に決めていたデズモンド（アンドリュー・ガーフィールド）は、軍隊でもその意志を貫こうとしていた。上官（サム・ワーシントン、ヴィンス・ヴォーン）や同僚（ルーク・ブレイシー）に疎まれながらも、妻（テリーサ・パーマー）や父（ヒューゴ・ウィーヴィング）の助けを借りて、銃を持たずに戦場に行くことを許可される。そして、デズモンドは難攻不落の最終戦地“ハクソー・リッジ”での戦闘に参加することになった。アメリカ軍が幾度となくハクソーの崖を登り制圧するも、敵のすさまじい攻撃に遭い、その度に撤退を余儀なくされる。敵の攻撃が続く中で、負傷した仲間たちが取り残されるのを見たデズモンドは、たった一人で戦場へ留まるというあり得ない決意をするが…"
  s.movie_image = Rails.root.join("db/fixtures/movies/hakusow.jpg").open
  s.a_movie_released = "2017年06月24日"
  s.show_time = "139分"
  s.supervisers_attributes = [
    {superviser_name: 'メル・ギブソン'}
  ]
  s.actors_attributes = [
    {actor_name: 'アンドリュー・ガーフィールド'},
    {actor_name: 'サム・ワーシントン'},
    {actor_name: 'ルーク・ブレイシー'},
    {actor_name: 'テリーサ・パーマー'},
    {actor_name: 'ヒューゴ・ウィーヴィング'},
    {actor_name: 'レイチェル・グリフィス'}
  ]
  s.writers_attributes = [
    {writer_name: 'アンドリュー・ナイト'},
    {writer_name: 'ロバート・シェンカン'},
    {writer_name: 'ランドール・ウォレス'}
  ]
end

Movie.seed do |s|
  s.id = 16
  s.title = "沈黙ーサイレンスー"
  s.summary = "17世紀、江戸初期。幕府による激しいキリシタン弾圧下の長崎。日本で捕えられ棄教したとされる高名な宣教師フェレイラを追い、弟子のロドリゴとガルペは日本人キチジローの手引きでマカオから長崎へと潜入する。
日本にたどりついた彼らは想像を絶する光景に驚愕しつつも、その中で弾圧を逃れた“隠れキリシタン”と呼ばれる日本人らと出会う。それも束の間、幕府の取締りは厳しさを増し、キチジローの裏切りにより遂にロドリゴらも囚われの身に。頑ななロドリゴに対し、長崎奉行の井上筑後守は「お前のせいでキリシタンどもが苦しむのだ」と棄教を迫る。次々と犠牲になる人々。守るべきは大いなる信念か、目の前の弱々しい命か。心に迷いが生じた事でわかった、強いと疑わなかった自分自身の弱さ。追い詰められた彼の決断とは―。"
  s.movie_image = Rails.root.join("db/fixtures/movies/silence.jpg").open
  s.a_movie_released = "2017年01月21日"
  s.show_time = "159分"
  s.supervisers_attributes = [
    {superviser_name: 'マーティン・スコセッシ'}
  ]
  s.actors_attributes = [
    {actor_name: 'アンドリュー・ガーフィールド'},
    {actor_name: 'リーアム・ニーソン'},
    {actor_name: 'アダム・ドライバー'},
    {actor_name: '窪塚洋介'},
    {actor_name: '浅野忠信'},
    {actor_name: '塚本晋也'}
  ]
  s.writers_attributes = [
    {writer_name: 'ジェイ・コックス'}
  ]
end

Movie.seed do |s|
  s.id = 17
  s.title = "君の膵臓を食べたい"
  s.summary = "高校時代のクラスメイト・山内桜良（浜辺美波）の言葉をきっかけに母校の教師となった【僕】（小栗旬）。彼は、教え子と話すうちに、彼女と過ごした数ヶ月を思い出していく――。膵臓の病を患う彼女が書いていた「共病文庫」（＝闘病日記）を偶然見つけたことから、【僕】（北村匠海）と桜良は次第に一緒に過ごすことに。だが、眩いまでに懸命に生きる彼女の日々はやがて、終わりを告げる。
               桜良の死から12年。結婚を目前に控えた彼女の親友・恭子（北川景子）もまた、【僕】と同様に、桜良と過ごした日々を思い出していた――。そして、ある事をきっかけに、桜良が12年の時を超えて伝えたかった本当の想いを知る2人――。"
  s.movie_image = Rails.root.join("db/fixtures/movies/kimisui.jpg").open
  s.a_movie_released = "2017年07月28日"
  s.show_time = "115分"
  s.supervisers_attributes = [
    {superviser_name: '月川翔'}
  ]
  s.actors_attributes = [
    {actor_name: '浜辺美波'},
    {actor_name: '北村匠海'},
    {actor_name: '大友花恋'},
    {actor_name: '矢本悠馬'},
    {actor_name: '桜田通'},
    {actor_name: '森下大地'}
  ]
  s.writers_attributes = [
    {writer_name: '吉田智子'}
  ]
end

Movie.seed do |s|
  s.id = 18
  s.title = "ジョーカー"
  s.summary ="どんな時も笑顔で人々を楽しませなさい」という母の言葉を胸にコメディアンを夢見る、孤独だが心優しいアーサー。都会の片隅でピエロメイクの大道芸人をしながら母を助け、同じアパートに住むソフィーに秘かな好意を抱いている。笑いのある人生は素晴らしいと信じ、ドン底から抜け出そうともがくアーサーはなぜ、狂気溢れる<悪のカリスマ>ジョーカーに変貌したのか? 切なくも衝撃の真実が明かされる！"
  s.movie_image = Rails.root.join("db/fixtures/movies/joker.jpg").open
  s.a_movie_released = "2019年10月04日"
  s.show_time = "122分"
  s.supervisers_attributes = [
    {superviser_name: 'トッド・フィリップス'}
  ]
  s.actors_attributes = [
    {actor_name: 'ホアキン・フェニックス'},
    {actor_name: 'ロバート・デ・ニーロ'},
    {actor_name: 'サジ・ビーツ'},
    {actor_name: 'フランセス・コンロイ'},
    {actor_name: 'マーク・マロン'},
    {actor_name: 'ブレット・カレン'}
  ]
  s.writers_attributes = [
    {writer_name: 'トッド・フィリップス'},
    {writer_name: 'スコット・シルヴァー'}
  ]
end

Movie.seed do |s|
  s.id = 19
  s.title = "エスター"
  s.summary = "この娘、どこかが変だ。その“正体”が見えた時、世界中がショックに震えた。"
  s.movie_image = Rails.root.join("db/fixtures/movies/esutaa.jpg").open
  s.a_movie_released = "2009年10月10日"
  s.show_time = "123分"
  s.supervisers_attributes = [
    {superviser_name: 'ジャウム・コレット＝セラ'}
  ]
  s.actors_attributes = [
    {actor_name: 'ヴェラ・ファーミガ'},
    {actor_name: 'ピーター・サースガード'},
    {actor_name: 'イザベル・ファーマン'},
    {actor_name: 'CCH・パウンダー'},
    {actor_name: 'ジミー・ベネット'},
    {actor_name: 'アリアーナ・エンジニア'}
  ]
  s.writers_attributes = [
    {writer_name: 'デヴィッド・レスリー・ジョンソン'}
  ]
end

Movie.seed do |s|
  s.id = 20
  s.title = "アイアンマン"
  s.summary = "アフガニスタンで自社兵器のデモ実験に参加したトニー・スタークは、テロ組織に襲われ拉致されてしまう。胸に深い傷を負い捕虜となった彼は、組織のために最強兵器の開発を強制される。トニーは装着することで、圧倒的な破壊力とパワーを発揮できる戦闘用パワードスーツを敵の目を盗み開発。敵地からの脱出に成功するが、奇跡的に生還したトニーは、ある事実を知り愕然とする・・・。自らが社長を務める会社が開発した兵器がテロ組織に使用されていたのだ。トニーはその償いをすべく、テロ撲滅に命を捧げることを決断。最先端の技術を駆使し、新たなパワードスーツの開発に着手する。"
  s.movie_image = Rails.root.join("db/fixtures/movies/ironman.jpg").open
  s.a_movie_released = "2008年09月27日"
  s.show_time = "125分"
  s.supervisers_attributes = [
    {superviser_name: 'ジョン・ファブロー'}
  ]
  s.actors_attributes = [
    {actor_name: 'ロバート・ダウニー・Jr'},
    {actor_name: 'ジェフ・ブリッジス'},
    {actor_name: 'テレンス・ハワード'},
    {actor_name: 'グウィネス・パルトロー'},
    {actor_name: 'ショーン・トーブ'},
    {actor_name: 'レスリー・ビブ'}
  ]
  s.writers_attributes = [
    {writer_name: 'マーク・ファーガス'},
    {writer_name: 'ホーク・オストビー'},
    {writer_name: 'アート・マーカム'},
    {writer_name: 'マット・ハロウェイ'}
  ]
end

Movie.seed do |s|
  s.id = 21
  s.title = "バタフライ・エフェクト"
  s.summary = ""
  s.movie_image = Rails.root.join("db/fixtures/movies/butterfly_efect.jpg").open
  s.a_movie_released = "2005年05月14日"
  s.show_time = "114分"
  s.supervisers_attributes = [
    {superviser_name: 'エリック・ブレス'},
    {superviser_name: 'J・マッキー・グルーバー'}
  ]
  s.actors_attributes = [
    {actor_name: 'アシュトン・カッチャー'},
    {actor_name: 'エイミー・スマート'},
    {actor_name: 'ウィリアム・リー・スコット'},
    {actor_name: 'エルデン・ヘンソン'},
    {actor_name: 'メローラ・ウォルターズ'},
    {actor_name: 'エリック・ストルツ'}
  ]
  s.writers_attributes = [
    {writer_name: 'エリック・ブレス'},
    {writer_name: 'J・マッキー・グルーバー'}
  ]
end