class ItemsController < ApplicationController
  before_action :set_item, only: [:show,:destroy, :edit, :update]
  before_action :authenticate_user!, except: [:index, :show]

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
    @item = Item.find(1)
   #  1=params[:id]
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
    @grandchild = Category.find(@item.category_id)  
    @grandchildren = @grandchild.siblings
    @child = @grandchild.parent
    @parent = @child.parent
    @children = @child.siblings
    @parents = @parent.siblings
  end

  def edit
    
  end



  private

  def set_item
    # ここを弄らないと@childがid4を参照するくさい
    @item = Item.find(4)
  end
    
  def item_params
    # brand_idセレクトボックスがユーザーによって選択されなかった場合、「その他」もしくは「登録なし」のようなレコードを代入
    if params.require(:item)[:brand_id] == ""
      params.require(:item)[:brand_id] = "4"
    end
    # ここを編集する
    params.require(:item).permit(:name, :price, :description, :category_id, :status, :condition, :size, :ship_price, :ship_area, :ship_day, :ship_method, :brand_id, item_images_attributes: [:image_url, :id, :_destroy]).merge(user_id: current_user.id)
  end

end

