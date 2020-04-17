class ItemsController < ApplicationController


  def new
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
  
  def pay
  end

  def show
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
