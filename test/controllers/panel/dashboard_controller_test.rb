require 'test_helper'

class Panel::DashboardControllerTest < ActionController::TestCase
  test "should get cockpit" do
    get :cockpit
    assert_response :success
  end

end
