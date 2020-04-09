class ItemsController < ApplicationController


  def new
    # items用に各個修正

    # @product = Product.new
    # @item_image = @product.images.build
  end

  def create
    # items用に各個修正

    # @product = Product.new(product_params)
    # if @product.save
    #   redirect_to controller: :products, action: :index
    # else
    #   render "new"
    # end
  end
  
  def pay
  end

  def show
  end
  

  # private

  # items用に各個修正
  # def product_params
  #   params.require(:product).permit(:name, :detail, :category, :price, :status, :state, :city, :delivery, :delivery_time, :fee_payer, images_attributes: [:image]).merge(user_id: current_user.id)
  # end

end
