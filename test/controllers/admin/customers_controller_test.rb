require 'test_helper'

class Admin::CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
    sign_in admins(:one)
  end

  test "should get index" do
    get admin_customers_url
    assert_response :success
  end

  test "unauthenticated should get redirect" do
    sign_out admins(:one) # be sure no one is signed in
    get admin_customers_url
    assert_response :redirect
  end

  test "should show customer" do
    get admin_customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch admin_customer_url(@customer), params: { customer: { first_name: @customer.first_name, last_name: @customer.last_name } }
    assert_redirected_to admin_customer_url(@customer)
  end
end
