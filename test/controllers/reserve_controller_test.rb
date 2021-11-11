require "test_helper"

class ReserveControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get reserve_home_url
    assert_response :success
  end
end
