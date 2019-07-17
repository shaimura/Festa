require 'test_helper'

class Admins::StaffRepliesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_staff_replies_new_url
    assert_response :success
  end

end
