require 'test_helper'

class FashionFootwearsControllerTest < ActionController::TestCase
  setup do
    @fashion_footwear = fashion_footwears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fashion_footwears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fashion_footwear" do
    assert_difference('FashionFootwear.count') do
      post :create, fashion_footwear: { brand: @fashion_footwear.brand, description: @fashion_footwear.description, footwear_type: @fashion_footwear.footwear_type, made_by_country: @fashion_footwear.made_by_country, made_with: @fashion_footwear.made_with, price: @fashion_footwear.price, quantity: @fashion_footwear.quantity, size: @fashion_footwear.size, title: @fashion_footwear.title }
    end

    assert_redirected_to fashion_footwear_path(assigns(:fashion_footwear))
  end

  test "should show fashion_footwear" do
    get :show, id: @fashion_footwear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fashion_footwear
    assert_response :success
  end

  test "should update fashion_footwear" do
    patch :update, id: @fashion_footwear, fashion_footwear: { brand: @fashion_footwear.brand, description: @fashion_footwear.description, footwear_type: @fashion_footwear.footwear_type, made_by_country: @fashion_footwear.made_by_country, made_with: @fashion_footwear.made_with, price: @fashion_footwear.price, quantity: @fashion_footwear.quantity, size: @fashion_footwear.size, title: @fashion_footwear.title }
    assert_redirected_to fashion_footwear_path(assigns(:fashion_footwear))
  end

  test "should destroy fashion_footwear" do
    assert_difference('FashionFootwear.count', -1) do
      delete :destroy, id: @fashion_footwear
    end

    assert_redirected_to fashion_footwears_path
  end
end
