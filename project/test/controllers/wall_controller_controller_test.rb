require 'test_helper'

class WallControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get wall" do
    get wall_controller_wall_url
    assert_response :success
  end

end
