require 'test_helper'

class MotorcycleAccessoriesControllerTest < ActionController::TestCase
  setup do
    @motorcycle_accessory = motorcycle_accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motorcycle_accessories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motorcycle_accessory" do
    assert_difference('MotorcycleAccessory.count') do
      post :create, motorcycle_accessory: { brand: @motorcycle_accessory.brand, color: @motorcycle_accessory.color, description: @motorcycle_accessory.description, feature: @motorcycle_accessory.feature, made_by_country: @motorcycle_accessory.made_by_country, made_with: @motorcycle_accessory.made_with, modal_number: @motorcycle_accessory.modal_number, price: @motorcycle_accessory.price, quantity: @motorcycle_accessory.quantity, size: @motorcycle_accessory.size, specification: @motorcycle_accessory.specification, title: @motorcycle_accessory.title, weight: @motorcycle_accessory.weight }
    end

    assert_redirected_to motorcycle_accessory_path(assigns(:motorcycle_accessory))
  end

  test "should show motorcycle_accessory" do
    get :show, id: @motorcycle_accessory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motorcycle_accessory
    assert_response :success
  end

  test "should update motorcycle_accessory" do
    patch :update, id: @motorcycle_accessory, motorcycle_accessory: { brand: @motorcycle_accessory.brand, color: @motorcycle_accessory.color, description: @motorcycle_accessory.description, feature: @motorcycle_accessory.feature, made_by_country: @motorcycle_accessory.made_by_country, made_with: @motorcycle_accessory.made_with, modal_number: @motorcycle_accessory.modal_number, price: @motorcycle_accessory.price, quantity: @motorcycle_accessory.quantity, size: @motorcycle_accessory.size, specification: @motorcycle_accessory.specification, title: @motorcycle_accessory.title, weight: @motorcycle_accessory.weight }
    assert_redirected_to motorcycle_accessory_path(assigns(:motorcycle_accessory))
  end

  test "should destroy motorcycle_accessory" do
    assert_difference('MotorcycleAccessory.count', -1) do
      delete :destroy, id: @motorcycle_accessory
    end

    assert_redirected_to motorcycle_accessories_path
  end
end
