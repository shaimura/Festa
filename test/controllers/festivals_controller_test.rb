require 'test_helper'

class FestivalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get festivals_new_url
    assert_response :success
  end

  test "should get show" do
    get festivals_show_url
    assert_response :success
  end

  test "should get index" do
    get festivals_index_url
    assert_response :success
  end

  test "should get edit" do
    get festivals_edit_url
    assert_response :success
  end

end
