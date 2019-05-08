require 'test_helper'

class SuperAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get super_admin" do
    get super_admin_super_admin_url
    assert_response :success
  end

end
