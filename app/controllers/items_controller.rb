class ItemsController < ApplicationController


  def new
    @prefectures = Prefecture.all
  end
  
  def pay
  end

  def show
  end
  
end
