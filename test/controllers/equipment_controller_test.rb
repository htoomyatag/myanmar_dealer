require 'test_helper'

class EquipmentControllerTest < ActionController::TestCase
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment" do
    assert_difference('Equipment.count') do
      post :create, equipment: { brand: @equipment.brand, color: @equipment.color, description: @equipment.description, made_by_country: @equipment.made_by_country, made_with: @equipment.made_with, modal_number: @equipment.modal_number, price: @equipment.price, quantity: @equipment.quantity, size: @equipment.size, specification: @equipment.specification, title: @equipment.title, weight: @equipment.weight }
    end

    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should show equipment" do
    get :show, id: @equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment
    assert_response :success
  end

  test "should update equipment" do
    patch :update, id: @equipment, equipment: { brand: @equipment.brand, color: @equipment.color, description: @equipment.description, made_by_country: @equipment.made_by_country, made_with: @equipment.made_with, modal_number: @equipment.modal_number, price: @equipment.price, quantity: @equipment.quantity, size: @equipment.size, specification: @equipment.specification, title: @equipment.title, weight: @equipment.weight }
    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should destroy equipment" do
    assert_difference('Equipment.count', -1) do
      delete :destroy, id: @equipment
    end

    assert_redirected_to equipment_index_path
  end
end
