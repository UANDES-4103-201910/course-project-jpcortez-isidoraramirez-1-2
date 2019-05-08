require 'test_helper'

class AdministratorControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get administrator" do
    get administrator_controller_administrator_url
    assert_response :success
  end

end
