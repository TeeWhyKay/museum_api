require 'test_helper'

class MuseumsControllerTest < ActionDispatch::IntegrationTest
  test "should get nearby" do
    get museums_nearby_url
    assert_response :success
  end

end
