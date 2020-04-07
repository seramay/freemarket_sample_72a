class User < ApplicationRecord
  has_one :deliver_address
  has_many :orders
  has_many :cards
  has_many :items
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :nickname,           presence: true
  validates :email,              presence: true, uniqueness: true, format: { with: /\A([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+/i}
  validates :encrypted_password, presence: true, length: { minimum: 7 }
  validates :first_name,         presence: true
  validates :last_name,          presence: true
  validates :first_name_reading, presence: true
  validates :last_name_reading,  presence: true 
  validates :birthday_year,      presence: true
  validates :birthday_month,     presence: true
  validates :birthday_date,      presence: true
end
