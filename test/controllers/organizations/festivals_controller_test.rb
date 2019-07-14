require 'test_helper'

class Organizations::FestivalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get organizations_festivals_new_url
    assert_response :success
  end

  test "should get show" do
    get organizations_festivals_show_url
    assert_response :success
  end

  test "should get index" do
    get organizations_festivals_index_url
    assert_response :success
  end

end
