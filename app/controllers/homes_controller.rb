class HomesController < ApplicationController
  def top
    @item = Item.order("created_at DESC").limit(3)
    # @item_image = ItemImage.find(@item.id)
  end
end
