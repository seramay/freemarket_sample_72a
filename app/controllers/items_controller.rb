class ItemsController < ApplicationController
  before_action :set_item, only: [:show,:destroy, :edit, :update]

  def index
    @item = Item.all
    @items = Item.order("created_at DESC").limit(3)
    @random = Item.order("RAND()").limit(3)
    @categories = Category.all
    @present = Category.where(ancestry: nil)
  end


  def new
      #セレクトボックスの初期値設定
      @category_parent_array = ["---"]
      #データベースから、親カテゴリーのみ抽出し、配列化
      Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.name
      end
  end

  def get_category_children 
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
    end
  # Ajax通信で送られてきたデータをparamsで受け取り､childrenで子を取得

  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
    end
 
  
  def pay
    @item = Item.find(1)
   #  1=params[:id]
  end

  def show
    @item = Item.find(1)
    @item_image = ItemImage.find(1)
    #  1=params[:id]
    # @user = @item.user
    # @grandchild = Category.find(@item.category_id)  
    # @grandchildren = @grandchild.siblings
    # @child = @grandchild.parent
    # @parent = @child.parent
    # @children = @child.siblings
    # @parents = @parent.siblings
  end

  def set_item
    @item = Item.find(1)
      #  params[:id])
  end
    

  
end