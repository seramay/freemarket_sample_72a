class HomesController < ApplicationController
  def top
    @item = Item.order("created_at DESC").limit(3)
  end
end
