require 'test_helper'

class FurnituresControllerTest < ActionController::TestCase
  setup do
    @furniture = furnitures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:furnitures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create furniture" do
    assert_difference('Furniture.count') do
      post :create, furniture: { avatar_1: @furniture.avatar_1, avatar_2: @furniture.avatar_2, avatar_3: @furniture.avatar_3, avatar_4: @furniture.avatar_4, brand: @furniture.brand, dimension: @furniture.dimension, made_by: @furniture.made_by, price: @furniture.price, title: @furniture.title, weight: @furniture.weight }
    end

    assert_redirected_to furniture_path(assigns(:furniture))
  end

  test "should show furniture" do
    get :show, id: @furniture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @furniture
    assert_response :success
  end

  test "should update furniture" do
    patch :update, id: @furniture, furniture: { avatar_1: @furniture.avatar_1, avatar_2: @furniture.avatar_2, avatar_3: @furniture.avatar_3, avatar_4: @furniture.avatar_4, brand: @furniture.brand, dimension: @furniture.dimension, made_by: @furniture.made_by, price: @furniture.price, title: @furniture.title, weight: @furniture.weight }
    assert_redirected_to furniture_path(assigns(:furniture))
  end

  test "should destroy furniture" do
    assert_difference('Furniture.count', -1) do
      delete :destroy, id: @furniture
    end

    assert_redirected_to furnitures_path
  end
end
