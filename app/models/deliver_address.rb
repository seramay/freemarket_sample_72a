class DeliverAddress < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :first_name,            presence: true
  validates :last_name,             presence: true
  validates :first_name_reading,    presence: true
  validates :last_name_reading,     presence: true
  validates :post_code,             presence: true
  validates :prefecture_id,         presence: true
  validates :address_city,          presence: true
  validates :address_street,        presence: true
  validates :phone_number,          presence: true
end
