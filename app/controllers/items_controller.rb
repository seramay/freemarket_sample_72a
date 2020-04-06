class ItemsController < ApplicationController
  def new
    @prefectures = Prefecture.all
  end
end
