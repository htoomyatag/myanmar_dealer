require 'test_helper'

class FashionHatsControllerTest < ActionController::TestCase
  setup do
    @fashion_hat = fashion_hats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fashion_hats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fashion_hat" do
    assert_difference('FashionHat.count') do
      post :create, fashion_hat: { brand: @fashion_hat.brand, description: @fashion_hat.description, hat_type: @fashion_hat.hat_type, made_by_country: @fashion_hat.made_by_country, made_with: @fashion_hat.made_with, price: @fashion_hat.price, quantity: @fashion_hat.quantity, title: @fashion_hat.title }
    end

    assert_redirected_to fashion_hat_path(assigns(:fashion_hat))
  end

  test "should show fashion_hat" do
    get :show, id: @fashion_hat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fashion_hat
    assert_response :success
  end

  test "should update fashion_hat" do
    patch :update, id: @fashion_hat, fashion_hat: { brand: @fashion_hat.brand, description: @fashion_hat.description, hat_type: @fashion_hat.hat_type, made_by_country: @fashion_hat.made_by_country, made_with: @fashion_hat.made_with, price: @fashion_hat.price, quantity: @fashion_hat.quantity, title: @fashion_hat.title }
    assert_redirected_to fashion_hat_path(assigns(:fashion_hat))
  end

  test "should destroy fashion_hat" do
    assert_difference('FashionHat.count', -1) do
      delete :destroy, id: @fashion_hat
    end

    assert_redirected_to fashion_hats_path
  end
end
