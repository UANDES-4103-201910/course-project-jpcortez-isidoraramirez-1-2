require 'test_helper'

class DumpsterControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get dumpster" do
    get dumpster_controller_dumpster_url
    assert_response :success
  end

end
