require "application_system_test_case"

class SampleItemsTest < ApplicationSystemTestCase
  setup do
    @sample_item = sample_items(:one)
  end

  test "visiting the index" do
    visit sample_items_url
    assert_selector "h1", text: "Sample Items"
  end

  test "creating a Sample item" do
    visit sample_items_url
    click_on "New Sample Item"

    check "Enabled" if @sample_item.enabled
    fill_in "Name", with: @sample_item.name
    click_on "Create Sample item"

    assert_text "Sample item was successfully created"
    click_on "Back"
  end

  test "updating a Sample item" do
    visit sample_items_url
    click_on "Edit", match: :first

    check "Enabled" if @sample_item.enabled
    fill_in "Name", with: @sample_item.name
    click_on "Update Sample item"

    assert_text "Sample item was successfully updated"
    click_on "Back"
  end

  test "destroying a Sample item" do
    visit sample_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sample item was successfully destroyed"
  end
end
