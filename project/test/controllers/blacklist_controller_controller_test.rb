require 'test_helper'

class BlacklistControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get blacklist" do
    get blacklist_controller_blacklist_url
    assert_response :success
  end

end
