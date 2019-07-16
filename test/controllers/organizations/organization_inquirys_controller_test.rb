require 'test_helper'

class Organizations::OrganizationInquirysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get organizations_organization_inquirys_new_url
    assert_response :success
  end

end
