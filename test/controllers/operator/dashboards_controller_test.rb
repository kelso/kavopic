require 'test_helper'

class Operator::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    sign_in operators(:one)
    get operator_dashboard_url
    assert_response :success
  end

  test "not authenticated should get redirect" do
    get operator_dashboard_url
    assert_response :redirect
  end
end
