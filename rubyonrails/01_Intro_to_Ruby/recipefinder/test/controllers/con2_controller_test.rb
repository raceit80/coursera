require 'test_helper'

class Con2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get con2_index_url
    assert_response :success
  end

end
