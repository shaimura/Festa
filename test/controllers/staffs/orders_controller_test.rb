require 'test_helper'

class Staffs::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get staffs_orders_new_url
    assert_response :success
  end

end
