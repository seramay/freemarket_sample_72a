require 'rails_helper'

RSpec.describe User, type: :model do
  it "ニックネーム、メールアドレス、パスワード、電話番号、姓、名、姓(カナ)、名(カナ)、年号、誕生月、誕生日がある場合有効" do
    user = FactoryBot.build(:user)
    expect(user).to be_valid
  end
  it "ニックネームがない場合、無効である" do
    user = FactoryBot.build(:user, nickname: nil)
    user.valid?
    expect(user.errors[:nickname]).to include("can't be blank")
  end
  it "ニックネームが20字を超えたら、無効である" do
    user = FactoryBot.build(:user, nickname: "aaaaaaaaaaaaaaaaaaaaa")
    user.valid?
    expect(user.errors[:nickname]).to include("is too long (maximum is 20 characters)")
  end
  it "メールアドレスがない場合、無効である" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end
  it " 重複したメールアドレスが存在する場合は無効である" do
    user1 = FactoryBot.create(:user)
    user2 = FactoryBot.build(:user)
    user2.valid?
    expect(user2.errors[:email]).to include("has already been taken")
  end
  it "メールアドレスの入力内容が正規表現に合わないと無効である" do
    user = FactoryBot.build(:user)
    user.valid?
    expect(user.email).to match(/\A[a-zA-Z0-9_#!$%&`'*+-{|}~^\/=?.]+@[a-zA-Z0-9][a-zA-Z0-9.-]+\z/)
  end
  it "パスワードがない場合無効である" do
    user = FactoryBot.build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end
  it "パスワードは7文字以上じゃないと無効である" do
    user = FactoryBot.build(:user, password: "aaaaaaa", password_confirmation: "aaaaaaa")
    user.valid?
    expect(user).to be_valid
  end
  it "passwordが存在してもpassword_confirmationがない場合は無効である" do
    user = FactoryBot.build(:user, password_confirmation: "")
    user.valid?
    expect(user.errors[:password_confirmation]).to include("doesn't match Password")
  end
  it "電話番号がない場合は無効である" do
    user = FactoryBot.build(:user, phone_number: nil)
    user.valid?
    expect(user.errors[:phone_number]).to include("can't be blank")
  end
  it "電話番号が13字を超えたら無効である" do
    user = FactoryBot.build(:user, phone_number: "080-1111-11111")
    user.valid?
    expect(user.errors[:phone_number]).to include("is too long (maximum is 13 characters)")
  end
  it "電話番号の入力内容が正規表現に合わないと無効である" do
    user = FactoryBot.build(:user)
    user.valid?
    expect(user.phone_number).to match(/\A0\d{2,3}-\d{1,4}-\d{4}\z/)
  end
  it "姓がない場合は無効である" do
    user = FactoryBot.build(:user, first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end
  it "姓が全角でない場合は無効である" do
    user = FactoryBot.build(:user)
    user.valid?
    expect(user.first_name).to match(/\A[ぁ-んァ-ン一-龥]/)
  end
  it "名がない場合は無効である" do
    user = FactoryBot.build(:user, last_name: nil)
    user.valid?
    expect(user.errors[:last_name]).to include("can't be blank")
  end
  it "名が全角でない場合は無効である" do
    user = FactoryBot.build(:user)
    user.valid?
    expect(user.last_name).to match(/\A[ぁ-んァ-ン一-龥]/)
  end
  it "姓(カナ)がない場合は無効である" do
    user = FactoryBot.build(:user, first_name_reading: nil)
    user.valid?
    expect(user.errors[:first_name_reading]).to include("can't be blank")
  end
  it "姓(カナ)が全角カタカナでない場合は無効である" do
    user = FactoryBot.build(:user)
    user.valid?
    expect(user.first_name_reading).to match(/\A[ァ-ロワヲンー \r\n\t]*\z/)
  end
  it "名(カナ)がない場合は無効である" do
    user = FactoryBot.build(:user, last_name_reading: nil)
    user.valid?
    expect(user.errors[:last_name_reading]).to include("can't be blank")
  end
  it "名(カナ)が全角カタカナでない場合は無効である" do
    user = FactoryBot.build(:user)
    user.valid?
    expect(user.last_name_reading).to match(/\A[ァ-ロワヲンー \r\n\t]*\z/)
  end
  it "年号がない場合は無効である" do
    user = FactoryBot.build(:user, birthday_year: "--")
    user.valid?
    expect(user.birthday_year).to eq "--"
  end
  it "誕生月がない場合は無効である" do
    user = FactoryBot.build(:user, birthday_month: "--")
    user.valid?
    expect(user.birthday_month).to eq "--"
  end
  it "誕生日がない場合は無効である" do
    user = FactoryBot.build(:user, birthday_day: "--")
    user.valid?
    expect(user.birthday_day).to eq "--"
  end
end