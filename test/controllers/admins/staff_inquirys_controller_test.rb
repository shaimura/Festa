require 'test_helper'

class Admins::StaffInquirysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_staff_inquirys_index_url
    assert_response :success
  end

end
