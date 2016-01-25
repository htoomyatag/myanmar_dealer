require 'test_helper'

class TelephoneAccessoriesControllerTest < ActionController::TestCase
  setup do
    @telephone_accessory = telephone_accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telephone_accessories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telephone_accessory" do
    assert_difference('TelephoneAccessory.count') do
      post :create, telephone_accessory: { brand: @telephone_accessory.brand, category: @telephone_accessory.category, color: @telephone_accessory.color, description: @telephone_accessory.description, feature: @telephone_accessory.feature, made_by_country: @telephone_accessory.made_by_country, modal_number: @telephone_accessory.modal_number, operation_system: @telephone_accessory.operation_system, price: @telephone_accessory.price, quantity: @telephone_accessory.quantity, size: @telephone_accessory.size, title: @telephone_accessory.title, weight: @telephone_accessory.weight }
    end

    assert_redirected_to telephone_accessory_path(assigns(:telephone_accessory))
  end

  test "should show telephone_accessory" do
    get :show, id: @telephone_accessory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telephone_accessory
    assert_response :success
  end

  test "should update telephone_accessory" do
    patch :update, id: @telephone_accessory, telephone_accessory: { brand: @telephone_accessory.brand, category: @telephone_accessory.category, color: @telephone_accessory.color, description: @telephone_accessory.description, feature: @telephone_accessory.feature, made_by_country: @telephone_accessory.made_by_country, modal_number: @telephone_accessory.modal_number, operation_system: @telephone_accessory.operation_system, price: @telephone_accessory.price, quantity: @telephone_accessory.quantity, size: @telephone_accessory.size, title: @telephone_accessory.title, weight: @telephone_accessory.weight }
    assert_redirected_to telephone_accessory_path(assigns(:telephone_accessory))
  end

  test "should destroy telephone_accessory" do
    assert_difference('TelephoneAccessory.count', -1) do
      delete :destroy, id: @telephone_accessory
    end

    assert_redirected_to telephone_accessories_path
  end
end
