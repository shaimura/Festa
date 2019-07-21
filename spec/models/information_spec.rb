require 'rails_helper'

RSpec.describe Information, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe '実際に保存してみる' do

	  	context "保存できている場合" do
	  		it "成功" do
	  			expect(FactoryBot.create(:organization)).to be_valid
	  			expect(FactoryBot.create(:festival)).to be_valid
	  			expect(FactoryBot.create(:information)).to be_valid
	  		end
	  	end

	  	context "保存できない場合" do

	  		it "festivalがない場合" do
	  			expect(build(:information, :no_festival)).to_not be_valid
	  		end

	  		it "お知らせがない場合" do
	  			expect(build(:information, :no_message)).to_not be_valid
	  		end

	  		it "お知らせが長い" do
	  			expect(build(:information, :message_long)).to_not be_valid
	  		end
	  	end

	end
end
