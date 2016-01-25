require 'test_helper'

class ElectricalEquipmentsControllerTest < ActionController::TestCase
  setup do
    @electrical_equipment = electrical_equipments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:electrical_equipments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create electrical_equipment" do
    assert_difference('ElectricalEquipment.count') do
      post :create, electrical_equipment: { brand: @electrical_equipment.brand, category: @electrical_equipment.category, color: @electrical_equipment.color, description: @electrical_equipment.description, made_by_country: @electrical_equipment.made_by_country, modal_number: @electrical_equipment.modal_number, price: @electrical_equipment.price, quantity: @electrical_equipment.quantity, size: @electrical_equipment.size, title: @electrical_equipment.title, weight: @electrical_equipment.weight }
    end

    assert_redirected_to electrical_equipment_path(assigns(:electrical_equipment))
  end

  test "should show electrical_equipment" do
    get :show, id: @electrical_equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @electrical_equipment
    assert_response :success
  end

  test "should update electrical_equipment" do
    patch :update, id: @electrical_equipment, electrical_equipment: { brand: @electrical_equipment.brand, category: @electrical_equipment.category, color: @electrical_equipment.color, description: @electrical_equipment.description, made_by_country: @electrical_equipment.made_by_country, modal_number: @electrical_equipment.modal_number, price: @electrical_equipment.price, quantity: @electrical_equipment.quantity, size: @electrical_equipment.size, title: @electrical_equipment.title, weight: @electrical_equipment.weight }
    assert_redirected_to electrical_equipment_path(assigns(:electrical_equipment))
  end

  test "should destroy electrical_equipment" do
    assert_difference('ElectricalEquipment.count', -1) do
      delete :destroy, id: @electrical_equipment
    end

    assert_redirected_to electrical_equipments_path
  end
end
