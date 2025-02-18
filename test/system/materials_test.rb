require "application_system_test_case"

class MaterialsTest < ApplicationSystemTestCase
  setup do
    @material = materials(:one)
  end

  test "visiting the index" do
    visit materials_url
    assert_selector "h1", text: "Materials"
  end

  test "creating a Material" do
    visit materials_url
    click_on "New Material"

    fill_in "Created at", with: @material.created_at
    fill_in "Description", with: @material.description
    fill_in "Name", with: @material.name
    fill_in "Picture", with: @material.picture
    fill_in "Place", with: @material.place
    fill_in "Price", with: @material.price
    fill_in "Stock", with: @material.stock
    fill_in "Updated at", with: @material.updated_at
    click_on "Create Material"

    assert_text "Material was successfully created"
    click_on "Back"
  end

  test "updating a Material" do
    visit materials_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @material.created_at
    fill_in "Description", with: @material.description
    fill_in "Name", with: @material.name
    fill_in "Picture", with: @material.picture
    fill_in "Place", with: @material.place
    fill_in "Price", with: @material.price
    fill_in "Stock", with: @material.stock
    fill_in "Updated at", with: @material.updated_at
    click_on "Update Material"

    assert_text "Material was successfully updated"
    click_on "Back"
  end

  test "destroying a Material" do
    visit materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material was successfully destroyed"
  end
end
