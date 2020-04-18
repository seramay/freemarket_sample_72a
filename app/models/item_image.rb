class ItemImage < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :item
  validates :image_url, presence: true
  
  mount_uploader :image_url, ImageUploader
end
