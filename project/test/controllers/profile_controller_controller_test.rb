require 'test_helper'

class ProfileControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get profile_controller_profile_url
    assert_response :success
  end

end
