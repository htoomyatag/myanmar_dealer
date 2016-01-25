require 'test_helper'

class FashionBagsControllerTest < ActionController::TestCase
  setup do
    @fashion_bag = fashion_bags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fashion_bags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fashion_bag" do
    assert_difference('FashionBag.count') do
      post :create, fashion_bag: { bag_type: @fashion_bag.bag_type, brand: @fashion_bag.brand, description: @fashion_bag.description, made_by_country: @fashion_bag.made_by_country, made_with: @fashion_bag.made_with, price: @fashion_bag.price, quantity: @fashion_bag.quantity, size: @fashion_bag.size, title: @fashion_bag.title }
    end

    assert_redirected_to fashion_bag_path(assigns(:fashion_bag))
  end

  test "should show fashion_bag" do
    get :show, id: @fashion_bag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fashion_bag
    assert_response :success
  end

  test "should update fashion_bag" do
    patch :update, id: @fashion_bag, fashion_bag: { bag_type: @fashion_bag.bag_type, brand: @fashion_bag.brand, description: @fashion_bag.description, made_by_country: @fashion_bag.made_by_country, made_with: @fashion_bag.made_with, price: @fashion_bag.price, quantity: @fashion_bag.quantity, size: @fashion_bag.size, title: @fashion_bag.title }
    assert_redirected_to fashion_bag_path(assigns(:fashion_bag))
  end

  test "should destroy fashion_bag" do
    assert_difference('FashionBag.count', -1) do
      delete :destroy, id: @fashion_bag
    end

    assert_redirected_to fashion_bags_path
  end
end
