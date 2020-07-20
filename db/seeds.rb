# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Admin.create!( name: 'admin', email: 'admin@admin.com', password: '10991099')

  User.create!( name: 'daisuke', email: 'daisuke_h@icloud.com', password: '04030403')
  User.create!( name: 'tomoki', email: 'tomoki_h@icloud.com', password: '04030403')
  User.create!( name: 'koyo', email: 'koyo_h@icloud.com', password: '04030403')
  User.create!( name: 'tom', email: 'tom_h@icloud.com', password: '04030403')

  Genre.create!( name: 'アクション')
  Genre.create!( name: 'ドラマ')
  Genre.create!( name: '恋愛')
  Genre.create!( name: 'ホラー')
  Genre.create!( name: 'アニメ')
  Genre.create!( name: 'ミュージカル')
  Genre.create!( name: 'スポーツ')
  Genre.create!( name: 'SF')
  Genre.create!( name: '青春')
  Genre.create!( name: 'コメディ')
  Genre.create!( name: 'ドキュメンタリー')
  Genre.create!( name: 'サスペンス')
  Genre.create!( name: 'ファミリー')
  Genre.create!( name: 'スリラー')
  Genre.create!( name: 'ファンタジー')
  Genre.create!( name: 'ミステリー')
  Genre.create!( name: 'パニック')
  Genre.create!( name: '歴史')
  Genre.create!( name: 'ギャング・マフィア')

  Movie.create!(
    title: 'アベンジャーズ エンドゲーム',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/avengers_endgame.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'イエスマン',
    summary: '何事にも「ノー」「嫌だ」「パス」と答える極めて後ろ向きの男、カール。 「生き方を変えない限り、お前はひとりぼっちになる」と脅され、 勇気を振り絞り、とあるセミナーに参加する。“意味のある人生を送るための、唯一のルール”は、全てのことに、それがどんな事であっても「イエス」と言うだけ。カールは何事も否定せず「イエス」を連発する。',
    movie_image: File.open('app/assets/images/yesman.jpg'),
    a_movie_released: '2009年3月20日',
    show_time: '104分',
    supervisers_attributes: [
      {superviser_name: 'ペイトン・リード'}
    ],
    actors_attributes: [
      {actor_name: 'ジム・キャリー'},
      {actor_name: 'ズーイー・デシャネル'},
      {actor_name: 'ブラッドリー・クーパー'},
      {actor_name: 'ジョン・マイケル・ヒギンズ'},
      {actor_name: 'テレンス・スタンプ'},
    ],
    writers_attributes: [
      {writer_name: 'ニコラス・ストーラー'},
      {writer_name: 'ジャレッド・ポール'},
      {writer_name: 'アンドリュー・モーゲル'}
    ]
  )

  Movie.create!(
    title: 'きみに読む物語',
    summary: '療養生活を送る老婦人(ジーナ・ローランズ)の元に、足繁く通う老人(ジェームズ・ガーナー)が、物語を読み聞かせる。 それは、1940年の夏、南部の小さな町で始まる物語。休暇を過ごしに都会からやって来た17歳の令嬢・アリー(レイチェル・マクアダムス)は、地元の製材所で働く青年ノア(ライアン・ゴズリング)と出逢い、恋に落ちる。 けれど、娘の将来を案じる両親に交際を阻まれ、都会へ連れ戻されてしまう。',
    movie_image: File.open('app/assets/images/the_notebook.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'ニック・カサヴェテス'}
    ],
    actors_attributes: [
      {actor_name: 'ライアン・ゴズリング'},
      {actor_name: 'レイチェル・マクアダムス'},
      {actor_name: 'ジーナ・ローランズ'},
      {actor_name: 'ジェームズ・ガーナー'},
      {actor_name: 'ジョーン・アレン'},
      {actor_name: 'ジェームズ・マースデン'},
    ],
    writers_attributes: [
      {writer_name: 'ジャン・サルディ'},
      {writer_name: 'ジェレミー・レヴェン'}
    ]
  )

  Movie.create!(
    title: 'ダイハード',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/die_hard.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: '君の名は',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/your_name.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: '風立ちぬ',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/kazetatinu.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'スパイダーマン　ホームカミング',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/spiderman_homecoming.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'スパイダーマン　ファーフロムホーム',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/spiderman_farfromhome.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'フォレストガンプ',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/forest_ganpu.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: '怒り',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/ikari.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'ダイハード４',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/die_hard4.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'アベンジャーズ　インフィニティウォー',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/avengers_infinity_war.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'ララランド',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/rararand.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'アバウトアタイム',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/about_a_time.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'ハクソーリッジ',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/hakusow.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: '沈黙',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/silence.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: '君の膵臓を食べたい',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/kimisui.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'ジョーカー',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/joker.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'エスター',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/esutaa.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

  Movie.create!(
    title: 'アイアンマン',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/ironman.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )

Movie.create!(
    title: 'バタフライ・エフェクト',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image: File.open('app/assets/images/butterfly_efect.jpg'),
    a_movie_released: '2019年4月26日',
    show_time: '181分',
    supervisers_attributes: [
      {superviser_name: 'アンソニー・ルッソ'},
      {superviser_name: 'ジョー・ルッソ'}
    ],
    actors_attributes: [
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
    ],
    writers_attributes: [
      {writer_name: 'クリストファー・マルクス'},
      {writer_name: 'スティーヴン・マクフィーリー'}
    ]
  )