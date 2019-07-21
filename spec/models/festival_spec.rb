require 'rails_helper'

RSpec.describe Festival, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe '実際に保存してみる' do

  	context "保存できている場合" do
	  		it "成功" do
	  			organization = FactoryBot.create(:organization)
	  			expect(FactoryBot.create(:festival, organization_id: organization.id)).to be_valid
	  		end
	  	end

	 context "保存できていない場合" do

		it "名前が入力されていない" do
			expect(build(:festival, :no_name)).to_not be_valid
		end

		it "名前が長い" do
			expect(build(:festival, :name_long)).to_not be_valid
		end

		it "住所が入力されていない" do
			expect(build(:festival, :no_address)).to_not be_valid
		end

		it "交通情報が入力されていない" do
			expect(build(:festival, :no_traffic)).to_not be_valid
		end

		it "お祭りのPRが入力されていない" do
			expect(build(:festival, :no_profile)).to_not be_valid
		end

		it "お祭りのPRが長い" do
			expect(build(:festival, :profile_long)).to_not be_valid
		end

		it "開催日が登録されていない" do
			expect(build(:festival, :no_date)).to_not be_valid
		end

		it "開催日が過去になっている" do
			expect(build(:festival, :past_date)).to_not be_valid
		end

		it "イメージ画像が登録されていない" do
			expect(build(:festival, :past_date)).to_not be_valid
		end
	 end

  	end
end
