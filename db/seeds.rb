# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Admin.create!( name: 'admin-authority', email: 'admin@admin.com', password: '04030403')

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
