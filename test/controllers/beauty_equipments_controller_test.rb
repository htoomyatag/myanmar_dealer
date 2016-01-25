require 'test_helper'

class BeautyEquipmentsControllerTest < ActionController::TestCase
  setup do
    @beauty_equipment = beauty_equipments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beauty_equipments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beauty_equipment" do
    assert_difference('BeautyEquipment.count') do
      post :create, beauty_equipment: { brand: @beauty_equipment.brand, category: @beauty_equipment.category, color: @beauty_equipment.color, description: @beauty_equipment.description, feature: @beauty_equipment.feature, made_by_country: @beauty_equipment.made_by_country, modal_number: @beauty_equipment.modal_number, title: @beauty_equipment.title }
    end

    assert_redirected_to beauty_equipment_path(assigns(:beauty_equipment))
  end

  test "should show beauty_equipment" do
    get :show, id: @beauty_equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beauty_equipment
    assert_response :success
  end

  test "should update beauty_equipment" do
    patch :update, id: @beauty_equipment, beauty_equipment: { brand: @beauty_equipment.brand, category: @beauty_equipment.category, color: @beauty_equipment.color, description: @beauty_equipment.description, feature: @beauty_equipment.feature, made_by_country: @beauty_equipment.made_by_country, modal_number: @beauty_equipment.modal_number, title: @beauty_equipment.title }
    assert_redirected_to beauty_equipment_path(assigns(:beauty_equipment))
  end

  test "should destroy beauty_equipment" do
    assert_difference('BeautyEquipment.count', -1) do
      delete :destroy, id: @beauty_equipment
    end

    assert_redirected_to beauty_equipments_path
  end
end
