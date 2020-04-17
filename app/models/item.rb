class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :brand
  has_many :orders
  has_many :item_images
  accepts_nested_attributes_for :item_images, allow_destroy: true

  validates_associated :item_images
  validates :item_images,      presence: true
  validates :name,             presence: true, length: {maximum: 40}
  validates :price,            presence: true
  validates :description,      presence: true, length: {maximum: 1000}
  validates :condition,        presence: true
  validates :size,             presence: true
  validates :ship_area,        presence: true
  validates :ship_day,         presence: true
  validates :ship_price,       presence: true
  validates :ship_method,      presence: true
  
  # カテゴリ実装後まで仮置き
  validates :category_id, presence: true
  # validates :category_id_1,    presence: true
  # validates :category_id_2,    presence: true
  # validates :category_id_3,    presence: true


  enum size: { "S": "S", "M": "M", "L": "L", "LL": "LL", "XL": "XL"}, _prefix: true
  enum condition: { "新品、未使用": "新品、未使用", "未使用に近い": "未使用に近い", "目立った傷や汚れはなし": "目立った傷や汚れはなし", "やや傷や汚れあり": "やや傷や汚れあり", "傷や汚れあり": "傷や汚れあり", "全体的に状態が悪い": "全体的に状態が悪い"}, _prefix: true
  enum ship_price: { "送料込み(出品者負担)": "送料込み(出品者負担)", "着払い(購入者負担)": "着払い(購入者負担)"}, _prefix: true
  enum ship_method: {"未定": "未定", "らくらくFURIMA便": "らくらくFURIMA便", "ゆうメール": "ゆうメール", "レターバッグ": "レターバッグ", "普通郵便(定型、定形外)": "普通郵便(定型、定形外)", "クロネコヤマト": "クロネコヤマト", "ゆうパック": "ゆうパック", "クリックポスト": "クリックポスト", "ゆうパケット": "ゆうパケット"}, _prefix: true
  enum ship_day: {"1〜2日で発送": "1〜2日で発送", "2〜3日で発送": "2〜3日で発送", "4〜7日で発送": "4〜7日で発送"}, _prefix: true

end

