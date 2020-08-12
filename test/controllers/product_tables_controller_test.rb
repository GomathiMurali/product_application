require 'test_helper'

class ProductTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_table = product_tables(:one)
  end

  test "should get index" do
    get product_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_product_table_url
    assert_response :success
  end

  test "should create product_table" do
    assert_difference('ProductTable.count') do
      post product_tables_url, params: { product_table: { description: @product_table.description, image_url: @product_table.image_url, price: @product_table.price, title: @product_table.title } }
    end

    assert_redirected_to product_table_url(ProductTable.last)
  end

  test "should show product_table" do
    get product_table_url(@product_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_table_url(@product_table)
    assert_response :success
  end

  test "should update product_table" do
    patch product_table_url(@product_table), params: { product_table: { description: @product_table.description, image_url: @product_table.image_url, price: @product_table.price, title: @product_table.title } }
    assert_redirected_to product_table_url(@product_table)
  end

  test "should destroy product_table" do
    assert_difference('ProductTable.count', -1) do
      delete product_table_url(@product_table)
    end

    assert_redirected_to product_tables_url
  end
end
