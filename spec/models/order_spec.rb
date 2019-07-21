require 'rails_helper'

RSpec.describe Order, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe '実際に保存してみる' do

	  	context "保存できている場合" do
	  		it "成功" do
	  			expect(FactoryBot.create(:present)).to be_valid
	  			expect(FactoryBot.create(:staff)).to be_valid
	  			expect(FactoryBot.create(:order)).to be_valid
	  		end
	  	end

	  	context "保存できていない場合" do

	  		it "presentがない" do
	  			expect(build(:order, :no_present)).to_not be_valid
	  		end

	  		it "staffがない場合" do
	  			expect(build(:order, :no_staff)).to_not be_valid
	  		end

	  	end
	end
end
