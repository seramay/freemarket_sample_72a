class ItemsController < ApplicationController


  def new
  end
  
  def pay
    @item = Item.find(1)
  end

  def show
    @item = Item.find(1)
    @item_image = ItemImage.find(1)
  end
  
end
