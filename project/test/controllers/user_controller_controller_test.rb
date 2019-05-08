require 'test_helper'

class UserControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get user_controller_user_url
    assert_response :success
  end

end
