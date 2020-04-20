class HomesController < ApplicationController
  def top
    @item = Item.find(1)
    @item_image = ItemImage.find(@item.id)
  end
end
