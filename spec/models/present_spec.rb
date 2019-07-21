require 'rails_helper'

RSpec.describe Present, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe '実際に保存してみる' do

	  	context "保存できている場合" do
	  		it "成功" do
	  			expect(FactoryBot.create(:present)).to be_valid
	  		end
	  	end

	  	context "保存できない場合" do

	  		it "プレゼント名が保存できていない場合" do
	  			expect(build(:present, :no_present)).to_not be_valid
	  		end

	  		it "プレゼントのイメージ画像が登録されていない" do
	  			expect(build(:present, :no_present_image_id)).to_not be_valid
	  		end

	  	end
	end

end
