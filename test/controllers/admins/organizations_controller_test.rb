require 'test_helper'

class Admins::OrganizationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_organizations_index_url
    assert_response :success
  end

end
