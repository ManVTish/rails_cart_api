require "test_helper"

class LineItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_item = line_items(:one)
  end

  test "should get index" do
    get line_items_url, as: :json
    assert_response :success
  end

  test "should create line_item" do
    assert_difference("LineItem.count") do
      post line_items_url, params: { line_item: { cart_id: @line_item.cart_id, product_id: @line_item.product_id } }, as: :json
    end

    assert_response :created
  end

  test "should show line_item" do
    get line_item_url(@line_item), as: :json
    assert_response :success
  end

  test "should update line_item" do
    patch line_item_url(@line_item), params: { line_item: { cart_id: @line_item.cart_id, product_id: @line_item.product_id } }, as: :json
    assert_response :success
  end

  test "should destroy line_item" do
    assert_difference("LineItem.count", -1) do
      delete line_item_url(@line_item), as: :json
    end

    assert_response :no_content
  end
end
