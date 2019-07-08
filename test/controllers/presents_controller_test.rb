require 'test_helper'

class PresentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get presents_new_url
    assert_response :success
  end

end
