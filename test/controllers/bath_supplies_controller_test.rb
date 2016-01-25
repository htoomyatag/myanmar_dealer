require 'test_helper'

class BathSuppliesControllerTest < ActionController::TestCase
  setup do
    @bath_supply = bath_supplies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bath_supplies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bath_supply" do
    assert_difference('BathSupply.count') do
      post :create, bath_supply: { age_group: @bath_supply.age_group, brand: @bath_supply.brand, category: @bath_supply.category, certification: @bath_supply.certification, description: @bath_supply.description, effect: @bath_supply.effect, ingredient: @bath_supply.ingredient, made_by_country: @bath_supply.made_by_country, title: @bath_supply.title, usage: @bath_supply.usage }
    end

    assert_redirected_to bath_supply_path(assigns(:bath_supply))
  end

  test "should show bath_supply" do
    get :show, id: @bath_supply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bath_supply
    assert_response :success
  end

  test "should update bath_supply" do
    patch :update, id: @bath_supply, bath_supply: { age_group: @bath_supply.age_group, brand: @bath_supply.brand, category: @bath_supply.category, certification: @bath_supply.certification, description: @bath_supply.description, effect: @bath_supply.effect, ingredient: @bath_supply.ingredient, made_by_country: @bath_supply.made_by_country, title: @bath_supply.title, usage: @bath_supply.usage }
    assert_redirected_to bath_supply_path(assigns(:bath_supply))
  end

  test "should destroy bath_supply" do
    assert_difference('BathSupply.count', -1) do
      delete :destroy, id: @bath_supply
    end

    assert_redirected_to bath_supplies_path
  end
end
