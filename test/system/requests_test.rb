require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "creating a Request" do
    visit requests_url
    click_on "New Request"

    fill_in "Created at", with: @request.created_at
    fill_in "Description", with: @request.description
    fill_in "Name", with: @request.name
    fill_in "Picture", with: @request.picture
    fill_in "Place", with: @request.place
    fill_in "Price", with: @request.price
    fill_in "Stock", with: @request.stock
    fill_in "Updated at", with: @request.updated_at
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "updating a Request" do
    visit requests_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @request.created_at
    fill_in "Description", with: @request.description
    fill_in "Name", with: @request.name
    fill_in "Picture", with: @request.picture
    fill_in "Place", with: @request.place
    fill_in "Price", with: @request.price
    fill_in "Stock", with: @request.stock
    fill_in "Updated at", with: @request.updated_at
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "destroying a Request" do
    visit requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request was successfully destroyed"
  end
end
