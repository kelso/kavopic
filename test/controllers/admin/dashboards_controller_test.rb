require 'test_helper'

class Admin::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    sign_in admins(:one)
    get admin_dashboard_url
    assert_response :success
  end

  test "not authenticated should get redirect" do
    get admin_dashboard_url
    assert_response :redirect
  end
end
