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
    @item = Item.new
    @item.item_images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to controller: :homes, action: :top
    else
      render "new"
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
    @item = Item.find(4)
  end
    
  def items_params
    # ここを編集する
    params.require(:item).permit(:name,:description,:category_id, :status,:condition, :ship_price,:ship_area,:ship_days,:brand_id,images_attributes: [:image,:id,:_destroy]).merge(user_id: current_user.id)
  end
    
  
  private

  def item_params
    # brand_idセレクトボックスがユーザーによって選択されなかった場合、「その他」もしくは「登録なし」のようなレコードを代入
    if params.require(:item)[:brand_id] == ""
      params.require(:item)[:brand_id] = "4"
    end
    # Todo1: ユーザーログイン機能実装後は .merge(user_id: current_user.id)に変更
    # Todo2: カテゴリー機能実装後は、category_idを.mergeではなく、フォームで入力するようにストパラを .merge(~) => :category に変更
    # Todo3: 商品出品状態カラム :status は.mergeにてvalue: nil で入力予定。この値を表示時に取得した場合、出品中で表示。(購入後は1を代入)、カラム追加のマイグレーションファイルは購入サーバー再度開発者が作成のため一時保留。
    params.require(:item).permit(:name, :price, :description, :condition, :size, :ship_area, :ship_price, :ship_method, :ship_day, :brand_id, item_images_attributes: [:image_url]).merge(user_id: 1, category_id: 5)
  end

end

