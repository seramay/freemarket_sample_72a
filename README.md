# README

# freemarket_sample_72a DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|phone_number|integer|null: false, unique: true, index: true|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_reading|string|null: false|
|last_name_reading|string|null: false|
|birthday_year|string|null: false|
|birthday_month|string|null: false|
|birthday_day|string|null: false|
|profile|text||
### association
- has_one :deliver_address
- has_many :orders
- has_many :cards
- has_many :items

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|condition|string|null: false|
|description|text|null: false|
|size|string|null: false|
|ship_area|string|null: false|
|ship_day|string|null: false|
|ship_price|string|null: false|
|ship_method|string|null: false|
|user_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|
### association
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- has_many :orders
- has_many :item_images

## deliver_addresses
|Column|Type|Options|
|------|----|-------|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_reading|string|null: false|
|last_name_reading|string|null: false|
|post_code|integer|null: false|
|prefecture_id|integer|null: false|
|address_city|string|null: false|
|address_street|string|null: false|
|address_building|string||
|phone_number|integer||
|user_id|references|null: false, foreign_key: true|
### association
- belongs_to :user
- has_many :orders

## orders
|Column|Type|Options|
|------|----|-------|
|order_day|string|null: false|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
|deliver_address_id|references|null: false, foreign_key: true|
### association
- belongs_to :user
- belongs_to :item
- belongs_to :deliver_address

## item_images
|Column|Type|Options|
|------|----|-------|
|image_url|string|null: false|
|item_id|references|null: false, foreign_key: true|
### association
- belongs_to :item

## categories
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|ancestry|string||
### association
- has_many :items

## brands
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique:true|
### association
- has_many :items

## cards
|Column|Type|Options|
|------|----|-------|
|pay_id|string|null: false|
|user_id|references|null: false, foreign_key: true|
### association
- belongs_to :user