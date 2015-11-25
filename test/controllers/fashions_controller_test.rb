require 'test_helper'

class FashionsControllerTest < ActionController::TestCase
  setup do
    @fashion = fashions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fashions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fashion" do
    assert_difference('Fashion.count') do
      post :create, fashion: { available_color: @fashion.available_color, available_size: @fashion.available_size, product_name: @fashion.product_name, shop_id: @fashion.shop_id, shop_name: @fashion.shop_name }
    end

    assert_redirected_to fashion_path(assigns(:fashion))
  end

  test "should show fashion" do
    get :show, id: @fashion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fashion
    assert_response :success
  end

  test "should update fashion" do
    patch :update, id: @fashion, fashion: { available_color: @fashion.available_color, available_size: @fashion.available_size, product_name: @fashion.product_name, shop_id: @fashion.shop_id, shop_name: @fashion.shop_name }
    assert_redirected_to fashion_path(assigns(:fashion))
  end

  test "should destroy fashion" do
    assert_difference('Fashion.count', -1) do
      delete :destroy, id: @fashion
    end

    assert_redirected_to fashions_path
  end
end
