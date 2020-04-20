# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
Faker::Config.locale = :ja
#   name = Faker::Name.unique.name
#   email = Faker::Internet.email
#   password = "hogehoge"
#   number = 3456789
#   User.create!(
#     nickname: name,
#     email: email,
#     password: password,
#     password_confirmation: password,
#     phone_number: number,
#     first_name: "爺さん",
#     last_name: "bot",
#     first_name_reading: "じいさん",
#     last_name_reading: "ぼっと",
#     birthday_year: "1995",
#     birthday_month: "12",
#     birthday_day: "25"
#   )
 

# choice = Category.create(name: "選択してください  最後まで選択必須！")
# レディース
lady = Category.create(name: "レディース")
lady_tops = lady.children.create(name: "トップス")
lady_jacket = lady.children.create(name: "ジャケット/アウター")
lady_pants = lady.children.create(name: "パンツ")
lady_skirt = lady.children.create(name: "スカート")
lady_onepiece = lady.children.create(name: "ワンピース")
lady_shoes = lady.children.create(name: "靴")
lady_roomwear = lady.children.create(name: "ルームウェア/パジャマ")
lady_legwear = lady.children.create(name: "レッグウェア")
lady_hat = lady.children.create(name: "帽子")
lady_bag = lady.children.create(name: "バッグ")
lady_accessories = lady.children.create(name: "アクセサリー")
lady_hairaccessories = lady.children.create(name: "ヘアアクセサリー")
lady_smallarticle = lady.children.create(name: "小物")
lady_watch = lady.children.create(name: "時計")
lady_wig = lady.children.create(name: "ウィッグ/エクステ")
lady_yukata = lady.children.create(name: "浴衣/水着")
lady_suit = lady.children.create(name: "スーツ/フォーマル")
lady_maternity = lady.children.create(name: "マタニティー")
lady_other = lady.children.create(name: "その他")
lady_tops.children.create([{name: "Tシャツ/カットソー（半袖/袖なし）"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "ャ  ツ/ブラウス(半袖/袖なし)"},{name: "シャツ/ブラウス(七分/長袖)"},{name: "ポロシャツ"}])
lady_jacket.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケト  "},{name: "その他"}])
lady_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}, {name: "カジュアルパンツ"},{name: "ハーパ  ンツ"}])
lady_skirt.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"},{name: "その他"}])
lady_onepiece.children.create([{name: "ミニワンピース"}, {name: "ひざ丈ワンピース"}, {name: "ロングワンピース"},{name: "の  他"}])
lady_shoes.children.create([{name: "ハイヒール/パンプス"}, {name: "ブーツ"}, {name: "サンダル"},{name: "その他"}])
lady_roomwear.children.create([{name: "パジャマ"}, {name: "ルームウェア"}, {name: "その他"}])
lady_legwear.children.create([{name: "ソックス"}, {name: "スパッツ/レギンス"}, {name: "ストッキング/タイツ"},{name: "その"}  ])
lady_hat.children.create([{name: "ニットキャップ/ビーニー"}, {name: "ハット"}, {name: "ハンチング/ベレー帽"},{name: "その"}  ])
lady_bag.children.create([{name: "ハンドバッグ"}, {name: "トートバッグ"}])
lady_accessories.children.create([{name: "ネックレス"},{name: "その他"}])
lady_hairaccessories.children.create([{name: "ヘアゴム/シュシュ"}, {name: "ヘアバンド/カチューシャ"}, {name: "ヘアピン"}, {name: "その他"}])
lady_smallarticle.children.create([{name: "長財布"}, {name: "折り財布"}, {name: "コインケース/小銭入れ"},{name: "その他"}])
lady_watch.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}, {name: "ラバーベルト"},{name: "その他"}])
lady_wig.children.create([{name: "前髪ウィッグ"}, {name: "ロングストレート"}, {name: "ロングカール"},{name: "その他"}])
lady_yukata.children.create([{name: "浴衣"}, {name: "着物"}, {name: "振袖"},{name: "その他"}])
lady_suit.children.create([{name: "スカートスーツ上下"}, {name: "パンツスーツ上下"}, {name: "ドレス"},{name: "その他"}])
lady_maternity.children.create([{name: "トップス"}, {name: "アウター"}, {name: "インナー"},{name: "その他"}])
lady_other.children.create([{name: "コスプレ"}, {name: "下着"}, {name: "その他"}])

# メンズ
mens = Category.create(name: "メンズ")
mens_tops = mens.children.create(name: "トップス")
mens_jacket = mens.children.create(name: "ジャケット/アウター")
mens_pants = mens.children.create(name: "パンツ")
mens_shoes = mens.children.create(name: "靴")
mens_hat = mens.children.create(name: "帽子")
mens_bag = mens.children.create(name: "バッグ")
mens_accessories = mens.children.create(name: "アクセサリー")
mens_smallarticle = mens.children.create(name: "小物")
mens_watch = mens.children.create(name: "時計")
mens_yukata = mens.children.create(name: "浴衣/水着")
mens_suit = mens.children.create(name: "スーツ/フォーマル")
mens_other = mens.children.create(name: "その他")
mens_tops.children.create([{name: "Tシャツ/カットソー（半袖/袖なし）"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "ャ  ツ(半袖/袖なし)"}, {name: "シャツ(七分/長袖)"}, {name: "ポロシャツ"}])
mens_jacket.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケト"},{name: "その他"}])
mens_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}, {name: "カジュアルパンツ"}, {name: "ハーパンツ"}])
mens_shoes.children.create([{name: "スニーカー"}, {name: "ブーツ"}, {name: "サンダル"}, {name: "その他"}])
mens_hat.children.create([{name: "ニットキャップ/ビーニー"}, {name: "ハット"}, {name: "ハンチング/ベレー帽"}, {name: "そ他"}  ])
mens_bag.children.create([{name: "ハンドバッグ"}, {name: "トートバッグ"}, {name: "エコバッグ"}, {name: "その他"}])
mens_accessories.children.create([{name: "ネックレス"}, {name: "ブレスレット"}, {name: "バングル/リストバンド"}, {name: "の  他"}])
mens_smallarticle.children.create([{name: "長財布"}, {name: "折り財布"}, {name: "コインケース/小銭入れ"}, {name: "その他"}])
mens_watch.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}, {name: "ラバーベルト"}, {name: "その"}])
mens_yukata.children.create([{name: "浴衣"}, {name: "着物"}, {name: "振袖"},{name: "その他"}])
mens_suit.children.create([{name: "スーツジャケット"}, {name: "スーツベスト"}, {name: "スラックス"}, {name: "セットアップ"},  {name: "その他"}])
mens_other.children.create([{name: "コスプレ"}, {name: "下着"}, {name: "その他"}])

# キッズ
kids = Category.create(name: "キッズ")
kids_tops = kids.children.create(name: "トップス")
kids_jacket = kids.children.create(name: "ジャケット/アウター")
kids_pants = kids.children.create(name: "パンツ")
kids_skirt = kids.children.create(name: "スカート")
kids_shoes = kids.children.create(name: "靴")
kids_other = kids.children.create(name: "その他")
kids_tops.children.create([{name: "Tシャツ/カットソー（半袖/袖なし）"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "ャ  ツ/ブラウス(半袖/袖なし)"},{name: "シャツ/ブラウス(七分/長袖)"}, {name: "ポロシャツ"}])
kids_jacket.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケト  "},{name: "その他"}])
kids_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}, {name: "カジュアルパンツ"}, {name: "ハーパ  ンツ"}])
kids_skirt.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"},{name: "その他"}])
kids_shoes.children.create([{name: "ハイヒール/パンプス"}, {name: "ブーツ"}, {name: "サンダル"}, {name: "その他"}])
kids_other.children.create([{name: "コスプレ"}, {name: "下着"}, {name: "その他"}])

# 本・音楽・ゲーム
books = Category.create(name: "本・音楽・ゲーム")
books_tops = books.children.create(name: "本")
books_jacket = books.children.create(name: "漫画")
books_pants = books.children.create(name: "雑誌")
books_skirt = books.children.create(name: "CD")
books_onepiece = books.children.create(name: "DVD/ブルーレイ")
books_shoes = books.children.create(name: "テレビゲーム")
books_tops.children.create([{name: "文学・小説"}, {name: "人文・社会"}, {name: "ノンフィクション・教養"}, {name: "ビジネ・経  済"}, {name: "エンタメ"}])
books_jacket.children.create([{name: "鬼滅の刃"}, {name: "ワンピース"}, {name: "NARUTO"}, {name: "その他"}])
books_pants.children.create([{name: "アート"}, {name: "ファッション"}, {name: "ニュース"}, {name: "エンタメ"}])
books_skirt.children.create([{name: "邦楽"}, {name: "洋楽"}, {name: "アニメ"}, {name: "クラシック"}])
books_onepiece.children.create([{name: "外国映画"}, {name: "日本映画"}, {name: "TVドラマ"}, {name: "その他"}])
books_shoes.children.create([{name: "家庭用ゲーム本体"}, {name: "携帯用ゲーム本体"}, {name: "家庭用ゲームソフト"}, {name: "携  帯用ゲームソフト"}])


# インテリア・住まい・小物
interiors = Category.create(name: "インテリア・住まい・小物")
interiors_tops = interiors.children.create(name: "おもちゃ")
interiors_jacket = interiors.children.create(name: "タレントグッズ")
interiors_pants = interiors.children.create(name: "コミック")
interiors_skirt = interiors.children.create(name: "カードゲーム")
interiors_tops.children.create([{name: "キャラクター"}, {name: "ぬいぐるみ"}, {name: "小物"},{name: "ミニカー"},{name: "ラ  モデル"}])
interiors_jacket.children.create([{name: "アイドル"}, {name: "ミュージシャン"}, {name: "タレント"},{name: "スポーツ選手"}])
interiors_pants.children.create([{name: "ストラップ"}, {name: "カード"}, {name: "バッジ"},{name: "ポスター"}])
interiors_skirt.children.create([{name: "遊戯王"}, {name: "ポケモン"}, {name: "デュエルマスター"},{name: "その他"}])


# おもちゃ・ホビー・グッズ
hobbys = Category.create(name: "おもちゃ・ホビー・グッズ")
hobbys_tops = hobbys.children.create(name: "おもちゃ")
hobbys_jacket = hobbys.children.create(name: "ホビー")
hobbys_pants = hobbys.children.create(name: "グッズ")
hobbys_tops.children.create([{name: "アンディーのおもちゃ"}])
hobbys_jacket.children.create([{name: "ホビーホビー"},{name: "その他"}])
hobbys_pants.children.create([{name: "アニメ"},{name: "ディズニー"}])



# コスメ・香水・美容
cosmes = Category.create(name: "コスメ・香水・美容")
cosmes_tops = cosmes.children.create(name: "コスメ")
cosmes_jacket = cosmes.children.create(name: "香水")
cosmes_pants = cosmes.children.create(name: "美容")
cosmes_tops.children.create([{name: "コスメセット"},{name: "単品"}])
cosmes_jacket.children.create([{name: "シャネル"},{name: "ディオール"}])
cosmes_pants.children.create([{name: "美容液１"},{name: "美容液２"}])



# 家電・スマホ・カメラ
smartphone = Category.create(name: "家電・スマホ・カメラ")
smartphone_tops = smartphone.children.create(name: "家電")
smartphone_jacket = smartphone.children.create(name: "スマホ")
smartphone_pants = smartphone.children.create(name: "カメラ")
smartphone_tops.children.create([{name: "掃除機"},{name: "洗濯機"}])
smartphone_jacket.children.create([{name: "iphone"}, {name: "シャープ"}])
smartphone_pants.children.create([{name: "一眼レフ"}, {name: "ミラーレス"}])


# スポーツ・レジャー
sport = Category.create(name: "スポーツ・レジャー")
sport_tops = sport.children.create(name: "野球")
sport_jacket = sport.children.create(name: "サッカー")
sport_pants = sport.children.create(name: "テニス")
sport_tops.children.create([{name: "ワールドシリーズ"},{name: "国内シリーズ"}])
sport_jacket.children.create([{name: "ワールドカップ"}, {name: "J1"},{name: "J2"}])
sport_pants.children.create([{name: "ワールドシリーズ"}, {name: "硬式"},{name: "軟式"}])

# チケット
ticket = Category.create(name: "チケット")
ticket_tops = ticket.children.create(name: "アイドル")
ticket_jacket = ticket.children.create(name: "劇団四季")
ticket_pants = ticket.children.create(name: "ミュージシャン")
ticket_tops.children.create([{name: "男性アイドル"},{name: "女性アイドル"}])
ticket_jacket.children.create([{name: "東京公演"},{name: "大阪公演"}])
ticket_pants.children.create([{name: "グループ"},{name: "ソロ"}])

Brand.create!([{
  name:'登録なし'
  name:'coach'
  name:'GUCCI'
  name:'CHANEL'
  name:'HERMES'
  name:'LOUIS VUITTON'
  name:'BVLGARI'
  name:'Cartier'
  name:'4℃'
  name:'BERBERRY'
  name:'TIFFANY & Co.'
}])

# Item.create!([{
#   name: '1',
#   description: 'スマホ',
#   condition: '新品',
#   ship_price: '無料',
#   ship_area: '愛知県',
#   ship_day: '2日以内',
#   price: 130000,
#   size: 'M',
#   brand_id: 1,
#   user_id: 1,
#   category_id: 257
# }])
# Item.create!(
#   [
#     {
#       name: '2',
#       description: 'スマホ',
#       condition: '新品',
#       ship_price: '無料',
#       ship_area: '愛知県',
#       ship_day: '2日以内',
#       price: 130000,
#       size: 'M',
#       brand_id: 1,
#       user_id: 7,
#       category_id: 257
#     }])
