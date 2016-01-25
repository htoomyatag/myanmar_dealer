require 'test_helper'

class FashionClothingsControllerTest < ActionController::TestCase
  setup do
    @fashion_clothing = fashion_clothings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fashion_clothings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fashion_clothing" do
    assert_difference('FashionClothing.count') do
      post :create, fashion_clothing: { brand: @fashion_clothing.brand, description: @fashion_clothing.description, gender: @fashion_clothing.gender, made_by_country: @fashion_clothing.made_by_country, made_with: @fashion_clothing.made_with, price: @fashion_clothing.price, quantity: @fashion_clothing.quantity, size: @fashion_clothing.size, title: @fashion_clothing.title }
    end

    assert_redirected_to fashion_clothing_path(assigns(:fashion_clothing))
  end

  test "should show fashion_clothing" do
    get :show, id: @fashion_clothing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fashion_clothing
    assert_response :success
  end

  test "should update fashion_clothing" do
    patch :update, id: @fashion_clothing, fashion_clothing: { brand: @fashion_clothing.brand, description: @fashion_clothing.description, gender: @fashion_clothing.gender, made_by_country: @fashion_clothing.made_by_country, made_with: @fashion_clothing.made_with, price: @fashion_clothing.price, quantity: @fashion_clothing.quantity, size: @fashion_clothing.size, title: @fashion_clothing.title }
    assert_redirected_to fashion_clothing_path(assigns(:fashion_clothing))
  end

  test "should destroy fashion_clothing" do
    assert_difference('FashionClothing.count', -1) do
      delete :destroy, id: @fashion_clothing
    end

    assert_redirected_to fashion_clothings_path
  end
end
