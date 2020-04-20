require 'rails_helper'
describe Item do
  describe '#create' do
    it "nameがない場合登録不可" do
      item = build(:item, name: "")
      item.valid?
      expect(item.errors[:name]).to include("を入力してください")
    end
    
    it "nameが41文字以上の場合登録不可" do
      item = build(:item, name: "a"*41)
      item.valid?
      expect(item.errors[:name]).to include("は40文字以内で入力してください")
    end

    it "descriptionがない場合登録不可" do
      item = build(:item, description: "")
      item.valid?
      expect(item.errors[:description]).to include("を入力してください")
    end

    it "descriptionが1001文字以上の場合登録不可" do
      item = build(:item, description: "a"*1001)
      item.valid?
      expect(item.errors[:description]).to include("は1000文字以内で入力してください")
    end

    it "category_idを選択していないと登録不可" do
      item = build(:item, category_id: "")
      item.valid?
      expect(item.errors[:category_id]).to include("を入力してください")
    end

    it "sizeを選択していないと登録不可" do
      item = build(:item, size: "")
      item.valid?
      expect(item.errors[:size]).to include("を入力してください")
    end

    it "conditionを選択していないと登録不可" do
      item = build(:item, condition: "")
      item.valid?
      expect(item.errors[:condition]).to include("を入力してください")
    end

    it "ship_priceが選択されいないと登録不可" do
      item = build(:item, ship_price: "")
      item.valid?
      expect(item.errors[:ship_price]).to include("を入力してください")
    end

    it "ship_methodが選択されていないと登録不可" do
      item = build(:item, ship_method: "")
      item.valid?
      expect(item.errors[:ship_method]).to include("を入力してください")
    end

    it "ship_areaが選択されていないと登録不可" do
      item = build(:item, ship_area: "")
      item.valid?
      expect(item.errors[:ship_area]).to include("を入力してください")
    end

    it "ship_dayが選択されていないと登録不可" do
      item = build(:item, ship_day: "")
      item.valid?
      expect(item.errors[:ship_day]).to include("を入力してください")
    end

    it "priceが入力されていないと登録不可" do
      item = build(:item, price: "")
      item.valid?
      expect(item.errors[:price]).to include("を入力してください")
    end
    
  end
end