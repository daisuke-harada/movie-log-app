# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Admin.create!( name: 'admin', email: 'admin@admin.com', password: '04030403')

  User.create!( name: 'daisuke', email: 'daisuke_h940403@icloud.com', password: '04030403')
  User.create!( name: 'tomoki', email: 'tomoki_h940403@icloud.com', password: '04030403')
  User.create!( name: 'koyo', email: 'koyo_h940403@icloud.com', password: '04030403')
  User.create!( name: 'tom', email: 'tom_h940403@icloud.com', password: '04030403')

  Movie.create!(
    title: 'アベンジャーズ エンドゲーム',
    summary: '最強を超える敵“サノス”によって、アベンジャーズのメンバーを含む全宇宙の生命の半分が一瞬で滅ぼされてしまった…。残されたアイアンマンをはじめとするヒーローたちはもう一度集結し、サノスに立ち向かうため、そして世界を救うために最後にして史上最大の戦いに挑む──。',
    movie_image_id: 'avengers_endgame.jpg',
    a_movie_released: '2019年4月26日',
    show_time: '181',
    )


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
