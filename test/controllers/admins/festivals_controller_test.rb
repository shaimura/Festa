require 'test_helper'

class Admins::FestivalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_festivals_index_url
    assert_response :success
  end

end
