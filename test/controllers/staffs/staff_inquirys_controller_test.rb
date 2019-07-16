require 'test_helper'

class Staffs::StaffInquirysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get staffs_staff_inquirys_new_url
    assert_response :success
  end

end
