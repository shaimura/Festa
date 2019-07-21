require 'rails_helper'

RSpec.describe OrganizationReply, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe '実際に保存してみる' do

	  	context "保存できている場合" do
	  		it "成功" do
	  			expect(FactoryBot.create(:admin)).to be_valid
	  			expect(FactoryBot.create(:organization)).to be_valid
	  			expect(FactoryBot.create(:organization_inquiry)).to be_valid
	  			expect(FactoryBot.create(:organization_reply)).to be_valid
	  		end
	  	end

	  	context "保存できない場合" do

	  		it "organizationがない場合" do
	  			expect(build(:organization_reply, :no_organization_inquiry)).to_not be_valid
	  		end

	  		it "adminがない場合" do
	  			expect(build(:organization_reply, :no_admin)).to_not be_valid
	  		end

	  		it "メッセージがない" do
	  			expect(build(:organization_reply, :no_massage)).to_not be_valid
	  		end

	  		it "メッセージが長い" do
	  			expect(build(:organization_reply, :message_long)).to_not be_valid
	  		end

	  	end

	  end
end
