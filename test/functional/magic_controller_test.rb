require 'test_helper'

class MagicControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
