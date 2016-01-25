require 'test_helper'

class MakeupAndSkincaresControllerTest < ActionController::TestCase
  setup do
    @makeup_and_skincare = makeup_and_skincares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:makeup_and_skincares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create makeup_and_skincare" do
    assert_difference('MakeupAndSkincare.count') do
      post :create, makeup_and_skincare: { brand: @makeup_and_skincare.brand, category: @makeup_and_skincare.category, certification: @makeup_and_skincare.certification, color: @makeup_and_skincare.color, description: @makeup_and_skincare.description, effect: @makeup_and_skincare.effect, ingredient: @makeup_and_skincare.ingredient, made_by_country: @makeup_and_skincare.made_by_country, title: @makeup_and_skincare.title, usage: @makeup_and_skincare.usage }
    end

    assert_redirected_to makeup_and_skincare_path(assigns(:makeup_and_skincare))
  end

  test "should show makeup_and_skincare" do
    get :show, id: @makeup_and_skincare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @makeup_and_skincare
    assert_response :success
  end

  test "should update makeup_and_skincare" do
    patch :update, id: @makeup_and_skincare, makeup_and_skincare: { brand: @makeup_and_skincare.brand, category: @makeup_and_skincare.category, certification: @makeup_and_skincare.certification, color: @makeup_and_skincare.color, description: @makeup_and_skincare.description, effect: @makeup_and_skincare.effect, ingredient: @makeup_and_skincare.ingredient, made_by_country: @makeup_and_skincare.made_by_country, title: @makeup_and_skincare.title, usage: @makeup_and_skincare.usage }
    assert_redirected_to makeup_and_skincare_path(assigns(:makeup_and_skincare))
  end

  test "should destroy makeup_and_skincare" do
    assert_difference('MakeupAndSkincare.count', -1) do
      delete :destroy, id: @makeup_and_skincare
    end

    assert_redirected_to makeup_and_skincares_path
  end
end
