require 'test_helper'

class GiftsControllerTest < ActionController::TestCase
  setup do
    @gift = gifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gift" do
    assert_difference('Gift.count') do
      post :create, gift: { color: @gift.color, description: @gift.description, made_by_country: @gift.made_by_country, made_with: @gift.made_with, price: @gift.price, quantity: @gift.quantity, title: @gift.title, weight: @gift.weight }
    end

    assert_redirected_to gift_path(assigns(:gift))
  end

  test "should show gift" do
    get :show, id: @gift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gift
    assert_response :success
  end

  test "should update gift" do
    patch :update, id: @gift, gift: { color: @gift.color, description: @gift.description, made_by_country: @gift.made_by_country, made_with: @gift.made_with, price: @gift.price, quantity: @gift.quantity, title: @gift.title, weight: @gift.weight }
    assert_redirected_to gift_path(assigns(:gift))
  end

  test "should destroy gift" do
    assert_difference('Gift.count', -1) do
      delete :destroy, id: @gift
    end

    assert_redirected_to gifts_path
  end
end
