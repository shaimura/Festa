require 'test_helper'

class Admins::PresentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_presents_new_url
    assert_response :success
  end

end
