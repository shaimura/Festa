require 'test_helper'

class Admins::StaffsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_staffs_index_url
    assert_response :success
  end

end
