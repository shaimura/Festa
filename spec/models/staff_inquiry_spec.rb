require 'rails_helper'

RSpec.describe StaffInquiry, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe '実際に保存してみる' do

	  	context "保存できている場合" do
	  		it "成功" do
	  			expect(FactoryBot.create(:staff)).to be_valid
	  			expect(FactoryBot.create(:staff_inquiry)).to be_valid
	  		end
	  	end

	  	context "保存できない場合" do

	  		it "organizationがない場合" do
	  			expect(build(:staff_inquiry, :no_staff)).to_not be_valid
	  		end

	  		it "メッセージがない" do
	  			expect(build(:staff_inquiry, :no_massage)).to_not be_valid
	  		end

	  		it "メッセージが長い" do
	  			expect(build(:staff_inquiry, :message_long)).to_not be_valid
	  		end

	  	end

	  end
end
