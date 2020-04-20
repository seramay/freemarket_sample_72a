require 'rails_helper'

RSpec.describe DeliverAddress, type: :model do
  it "姓、名、姓(カナ)、名(カナ)、郵便番号、都道府県、市町村、番地がある場合有効" do
    deliver_address = FactoryBot.build(:deliver_address)
    expect(deliver_address).to be_valid
  end
  it "姓がない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address, first_name: nil)
    deliver_address.valid?
    expect(deliver_address.errors[:first_name]).to include("を入力してください")
  end
  it "姓が全角でない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address)
    deliver_address.valid?
    expect(deliver_address.first_name).to match(/\A[ぁ-んァ-ン一-龥]/)
  end
  it "名がない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address, last_name: nil)
    deliver_address.valid?
    expect(deliver_address.errors[:last_name]).to include("を入力してください")
  end
  it "名が全角でない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address)
    deliver_address.valid?
    expect(deliver_address.last_name).to match(/\A[ぁ-んァ-ン一-龥]/)
  end
  it "姓(カナ)がない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address, first_name_reading: nil)
    deliver_address.valid?
    expect(deliver_address.errors[:first_name_reading]).to include("を入力してください")
  end
  it "姓(カナ)が全角カタカナでない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address)
    deliver_address.valid?
    expect(deliver_address.first_name_reading).to match(/\A[ァ-ロワヲンー \r\n\t]*\z/)
  end
  it "名(カナ)がない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address, last_name_reading: nil)
    deliver_address.valid?
    expect(deliver_address.errors[:last_name_reading]).to include("を入力してください")
  end
  it "名(カナ)が全角カタカナでない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address)
    deliver_address.valid?
    expect(deliver_address.last_name_reading).to match(/\A[ァ-ロワヲンー \r\n\t]*\z/)
  end
  it "郵便番号がない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address, post_code: nil)
    deliver_address.valid?
    expect(deliver_address.errors[:post_code]).to include("を入力してください")
  end
  it "郵便番号が正規の形でない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address)
    deliver_address.valid?
    expect(deliver_address.post_code).to match(/\A\d{3}[-]\d{4}\z/)
  end
  it "都道府県がない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address, prefecture_id: nil)
    deliver_address.valid?
    expect(deliver_address.errors[:prefecture_id]).to include("を入力してください")
  end
  it "市町村がない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address, address_city: nil)
    deliver_address.valid?
    expect(deliver_address.errors[:address_city]).to include("を入力してください")
  end
  it "番地がない場合は無効である" do
    deliver_address = FactoryBot.build(:deliver_address, address_street: nil)
    deliver_address.valid?
    expect(deliver_address.errors[:address_street]).to include("を入力してください")
  end
end