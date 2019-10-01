require 'test_helper'

class Customer::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    sign_in customers(:one)
    get customer_dashboard_url
    assert_response :success
  end

  test "not authenticated should get redirect" do
    get customer_dashboard_url
    assert_response :redirect
  end
end
