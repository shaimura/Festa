require 'rails_helper'

RSpec.describe Admin, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "実際に保存してみる" do

  	context "保存できている場合" do
  		it "成功" do
  			expect(build(:admin)).to be_valid
  		end
  	end

  	context "保存できない場合" do

  		it "名前が入力されていない" do
  			expect(build(:admin, :no_name)).to_not be_valid
  		end

  		it "名前が長い" do
  			expect(build(:admin, :name_long)).to_not be_valid
  		end

  		it "メールが入力されていない" do
  			expect(build(:admin, :no_email)).to_not be_valid
  		end

  		it "パスワードが入力されていない" do
  			expect(build(:admin, :no_email)).to_not be_valid
  		end

  	end
  end
end
