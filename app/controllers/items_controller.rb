class ItemsController < ApplicationController

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
  end

  def show
  end
  
end
