require 'test_helper'

class FashionAccessoriesControllerTest < ActionController::TestCase
  setup do
    @fashion_accessory = fashion_accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fashion_accessories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fashion_accessory" do
    assert_difference('FashionAccessory.count') do
      post :create, fashion_accessory: { brand: @fashion_accessory.brand, description: @fashion_accessory.description, made_by_country: @fashion_accessory.made_by_country, made_with: @fashion_accessory.made_with, price: @fashion_accessory.price, quantity: @fashion_accessory.quantity, title: @fashion_accessory.title }
    end

    assert_redirected_to fashion_accessory_path(assigns(:fashion_accessory))
  end

  test "should show fashion_accessory" do
    get :show, id: @fashion_accessory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fashion_accessory
    assert_response :success
  end

  test "should update fashion_accessory" do
    patch :update, id: @fashion_accessory, fashion_accessory: { brand: @fashion_accessory.brand, description: @fashion_accessory.description, made_by_country: @fashion_accessory.made_by_country, made_with: @fashion_accessory.made_with, price: @fashion_accessory.price, quantity: @fashion_accessory.quantity, title: @fashion_accessory.title }
    assert_redirected_to fashion_accessory_path(assigns(:fashion_accessory))
  end

  test "should destroy fashion_accessory" do
    assert_difference('FashionAccessory.count', -1) do
      delete :destroy, id: @fashion_accessory
    end

    assert_redirected_to fashion_accessories_path
  end
end
