require 'test_helper'

class Admins::OrganizationRepliesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_organization_replies_new_url
    assert_response :success
  end

end
