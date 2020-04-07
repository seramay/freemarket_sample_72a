class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item
  belongs_to :deliver_address

end
