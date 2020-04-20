class MypagesController < ApplicationController
  before_action :set_category
  before_action :set_user_params, only: [:show]
  before_action :set_user_current, only: [:index]

  def index
    @items = @user.items
  end

  def show
    @items = @user.items
  end



  private
  
  def set_user_params
    @user = User.find(params[:id])
  end

  def set_category
    @category_parent_array = Category.where(ancestry: nil)
  end


end
