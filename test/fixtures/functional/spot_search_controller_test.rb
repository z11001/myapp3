require 'test_helper'

class SpotSearchControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
