class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :destroy, :edit, :update, :pay]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_category, only: [:new, :create, :edit, :update]
  before_action :set_category_object, only: [:show, :edit, :update]
  before_action :set_card, only: [:pay]
  before_action :set_deliver_address, only: [:pay]

  def index
    @item = Item.all
    @items = Item.order("created_at DESC").limit(3)
    @random = Item.order("RAND()").limit(3)
    @categories = Category.all
    @present = Category.where(ancestry: nil)
  end

  def new
    @item = Item.new
    @item.item_images.build
  end
  
  def get_category_children 
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end
  # Ajax通信で送られてきたデータをparamsで受け取り､childrenで子を取得
  
  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to controller: :homes, action: :top
    else
      render "new"
    end
  end
  
  def pay
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @default_card_information = customer.cards.retrieve(@card.card_id)
  end

  def destroy
    if @item.user.id == current_user.id && @item.destroy
      redirect_to root_path
      flash[:alert] = '削除しました。'    
    else
      redirect_to root_path , notice: '削除に失敗しました'
    end
  end

  def show
    @user = @item.user
  end

  def edit
  end

  def update
    if@item.update(item_params)
      redirect_to item_path(@item.id), notice: "商品情報を編集しました"
    else
      render "edit", notice: "編集できません。入力必須項目を確認してください"
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
    @ship_area = Prefecture.find(@item.ship_area)
    @item_images = @item.item_images
  end

  def set_category
    @category_parent_array = Category.where(ancestry: nil).pluck(:name)
  end
    
  def set_category_object
    @grandchild = Category.find(@item.category_id)  
    @grandchildren = @grandchild.siblings
    @child = @grandchild.parent
    @parent = @child.parent
    @children = @child.siblings
    @parents = @parent.siblings
  end
    
  def item_params
    # brand_idセレクトボックスがユーザーによって選択されなかった場合、「その他」もしくは「登録なし」のようなレコードを代入
    if params.require(:item)[:brand_id] == ""
      params.require(:item)[:brand_id] = "1"
    end
    params.require(:item).permit(:name, :price, :description, :category_id, :status, :condition, :size, :ship_price, :ship_area, :ship_day, :ship_method, :brand_id, item_images_attributes: [:image_url, :_destroy, :id]).merge(user_id: current_user.id)
  end

  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end

  def set_deliver_address
    @address = DeliverAddress.find_by(user_id: current_user.id)
  end
end
