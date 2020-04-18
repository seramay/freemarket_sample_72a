class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :brand
  has_many :orders
  has_many :item_images

  validates :name,             presence: true, length: {maximum: 40}
  validates :price,            presence: true
  validates :description,      presence: true
  validates :condition,        presence: true
  validates :size,             presence: true
  validates :ship_area,        presence: true
  validates :ship_day,         presence: true
  validates :ship_price,       presence: true
  validates :category_id,      presence: true

end
