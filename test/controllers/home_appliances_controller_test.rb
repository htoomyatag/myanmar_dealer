require 'test_helper'

class HomeAppliancesControllerTest < ActionController::TestCase
  setup do
    @home_appliance = home_appliances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_appliances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_appliance" do
    assert_difference('HomeAppliance.count') do
      post :create, home_appliance: { brand: @home_appliance.brand, category: @home_appliance.category, color: @home_appliance.color, description: @home_appliance.description, feature: @home_appliance.feature, made_by_country: @home_appliance.made_by_country, modal_number: @home_appliance.modal_number, power: @home_appliance.power, price: @home_appliance.price, quantity: @home_appliance.quantity, size: @home_appliance.size, title: @home_appliance.title, voltage: @home_appliance.voltage, weight: @home_appliance.weight }
    end

    assert_redirected_to home_appliance_path(assigns(:home_appliance))
  end

  test "should show home_appliance" do
    get :show, id: @home_appliance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_appliance
    assert_response :success
  end

  test "should update home_appliance" do
    patch :update, id: @home_appliance, home_appliance: { brand: @home_appliance.brand, category: @home_appliance.category, color: @home_appliance.color, description: @home_appliance.description, feature: @home_appliance.feature, made_by_country: @home_appliance.made_by_country, modal_number: @home_appliance.modal_number, power: @home_appliance.power, price: @home_appliance.price, quantity: @home_appliance.quantity, size: @home_appliance.size, title: @home_appliance.title, voltage: @home_appliance.voltage, weight: @home_appliance.weight }
    assert_redirected_to home_appliance_path(assigns(:home_appliance))
  end

  test "should destroy home_appliance" do
    assert_difference('HomeAppliance.count', -1) do
      delete :destroy, id: @home_appliance
    end

    assert_redirected_to home_appliances_path
  end
end
