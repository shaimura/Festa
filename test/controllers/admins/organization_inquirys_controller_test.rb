require 'test_helper'

class Admins::OrganizationInquirysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_organization_inquirys_index_url
    assert_response :success
  end

end
