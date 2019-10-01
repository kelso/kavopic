require 'test_helper'

class SampleItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample_item = sample_items(:one)
  end

  test "should get index" do
    get sample_items_url
    assert_response :success
  end

  test "should get new" do
    get new_sample_item_url
    assert_response :success
  end

  test "should create sample_item" do
    assert_difference('SampleItem.count') do
      post sample_items_url, params: { sample_item: { enabled: @sample_item.enabled, name: @sample_item.name } }
    end

    assert_redirected_to sample_item_url(SampleItem.last)
  end

  test "should show sample_item" do
    get sample_item_url(@sample_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_sample_item_url(@sample_item)
    assert_response :success
  end

  test "should update sample_item" do
    patch sample_item_url(@sample_item), params: { sample_item: { enabled: @sample_item.enabled, name: @sample_item.name } }
    assert_redirected_to sample_item_url(@sample_item)
  end

  test "should destroy sample_item" do
    assert_difference('SampleItem.count', -1) do
      delete sample_item_url(@sample_item)
    end

    assert_redirected_to sample_items_url
  end
end
