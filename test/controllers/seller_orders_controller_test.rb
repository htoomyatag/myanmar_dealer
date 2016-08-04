require 'test_helper'

class SellerOrdersControllerTest < ActionController::TestCase
  setup do
    @seller_order = seller_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seller_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seller_order" do
    assert_difference('SellerOrder.count') do
      post :create, seller_order: { customer_name: @seller_order.customer_name }
    end

    assert_redirected_to seller_order_path(assigns(:seller_order))
  end

  test "should show seller_order" do
    get :show, id: @seller_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seller_order
    assert_response :success
  end

  test "should update seller_order" do
    patch :update, id: @seller_order, seller_order: { customer_name: @seller_order.customer_name }
    assert_redirected_to seller_order_path(assigns(:seller_order))
  end

  test "should destroy seller_order" do
    assert_difference('SellerOrder.count', -1) do
      delete :destroy, id: @seller_order
    end

    assert_redirected_to seller_orders_path
  end
end
