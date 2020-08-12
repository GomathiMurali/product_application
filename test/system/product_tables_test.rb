require "application_system_test_case"

class ProductTablesTest < ApplicationSystemTestCase
  setup do
    @product_table = product_tables(:one)
  end

  test "visiting the index" do
    visit product_tables_url
    assert_selector "h1", text: "Product Tables"
  end

  test "creating a Product table" do
    visit product_tables_url
    click_on "New Product Table"

    fill_in "Description", with: @product_table.description
    fill_in "Image url", with: @product_table.image_url
    fill_in "Price", with: @product_table.price
    fill_in "Title", with: @product_table.title
    click_on "Create Product table"

    assert_text "Product table was successfully created"
    click_on "Back"
  end

  test "updating a Product table" do
    visit product_tables_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product_table.description
    fill_in "Image url", with: @product_table.image_url
    fill_in "Price", with: @product_table.price
    fill_in "Title", with: @product_table.title
    click_on "Update Product table"

    assert_text "Product table was successfully updated"
    click_on "Back"
  end

  test "destroying a Product table" do
    visit product_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product table was successfully destroyed"
  end
end
