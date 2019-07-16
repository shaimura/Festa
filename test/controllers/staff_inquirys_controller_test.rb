require 'test_helper'

class StaffInquirysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get staff_inquirys_new_url
    assert_response :success
  end

end
