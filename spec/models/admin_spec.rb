require 'rails_helper'

RSpec.describe Admin, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "実際に保存してみる" do

  	context "保存できている場合" do
  		it "成功" do
  			expect(build(:admin)).to be_valid
  		end
  	end
  end
end
