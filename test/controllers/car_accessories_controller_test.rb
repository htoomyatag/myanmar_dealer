require 'test_helper'

class CarAccessoriesControllerTest < ActionController::TestCase
  setup do
    @car_accessory = car_accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_accessories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_accessory" do
    assert_difference('CarAccessory.count') do
      post :create, car_accessory: { brand: @car_accessory.brand, color: @car_accessory.color, description: @car_accessory.description, feature: @car_accessory.feature, made_by_country: @car_accessory.made_by_country, made_with: @car_accessory.made_with, modal_number: @car_accessory.modal_number, price: @car_accessory.price, quantity: @car_accessory.quantity, size: @car_accessory.size, specification: @car_accessory.specification, title: @car_accessory.title, weight: @car_accessory.weight }
    end

    assert_redirected_to car_accessory_path(assigns(:car_accessory))
  end

  test "should show car_accessory" do
    get :show, id: @car_accessory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_accessory
    assert_response :success
  end

  test "should update car_accessory" do
    patch :update, id: @car_accessory, car_accessory: { brand: @car_accessory.brand, color: @car_accessory.color, description: @car_accessory.description, feature: @car_accessory.feature, made_by_country: @car_accessory.made_by_country, made_with: @car_accessory.made_with, modal_number: @car_accessory.modal_number, price: @car_accessory.price, quantity: @car_accessory.quantity, size: @car_accessory.size, specification: @car_accessory.specification, title: @car_accessory.title, weight: @car_accessory.weight }
    assert_redirected_to car_accessory_path(assigns(:car_accessory))
  end

  test "should destroy car_accessory" do
    assert_difference('CarAccessory.count', -1) do
      delete :destroy, id: @car_accessory
    end

    assert_redirected_to car_accessories_path
  end
end
