require 'rails_helper'

RSpec.describe Staff,"モデルに関するテスト", type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "実際に保存してみる" do

  	context "保存できている場合" do
  		it "成功" do
  			expect(build(:staff)).to be_valid
  		end

  	end

  	context "保存できていない場合" do

  		it "名前が入力されていない" do
  			expect(build(:staff, :no_name)).to_not be_valid
  		end

  		it "名前が長い" do
  			expect(build(:staff, :name_long)).to_not be_valid
  		end

  		it "メールが入力されてない" do
  			expect(build(:staff, :no_email)).to_not be_valid
  		end

  		it "パスワードが入力されてない" do
  			expect(build(:staff, :no_password)).to_not be_valid
  		end


  		it "電話番号が入力されていない" do
  			expect(build(:staff, :no_telephone)).to_not be_valid
  		end

  		it "電話番号が長い" do
  			expect(build(:staff, :telephone_long)).to_not be_valid
  		end

  		it "郵便番号がない" do
  			expect(build(:staff, :no_postalcode)).to_not be_valid
  		end

  		it "郵便番号が長い" do
  			expect(build(:staff, :postalcode_long)).to_not be_valid
  		end

  		it "住所が入力されてない" do
  			expect(build(:staff, :no_address)).to_not be_valid
  		end
  	end

  end
end
