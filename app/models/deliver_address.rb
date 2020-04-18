class DeliverAddress < ApplicationRecord
  belongs_to :user, optional: true
  has_many :orders
  validates :first_name,            presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/}
  validates :last_name,             presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/}
  validates :first_name_reading,    presence: true, format: {with: /\A[ァ-ロワヲンー \r\n\t]*\z/}
  validates :last_name_reading,     presence: true, format: {with: /\A[ァ-ロワヲンー \r\n\t]*\z/}
  validates :post_code,             presence: true, format: {with: /\A\d{3}[-]\d{4}\z/}
  validates :prefecture_id,         presence: true
  validates :address_city,          presence: true
  validates :address_street,        presence: true
end
