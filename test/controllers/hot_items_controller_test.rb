require 'test_helper'

class HotItemsControllerTest < ActionController::TestCase
  setup do
    @hot_item = hot_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hot_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hot_item" do
    assert_difference('HotItem.count') do
      post :create, hot_item: { image_data: @hot_item.image_data }
    end

    assert_redirected_to hot_item_path(assigns(:hot_item))
  end

  test "should show hot_item" do
    get :show, id: @hot_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hot_item
    assert_response :success
  end

  test "should update hot_item" do
    patch :update, id: @hot_item, hot_item: { image_data: @hot_item.image_data }
    assert_redirected_to hot_item_path(assigns(:hot_item))
  end

  test "should destroy hot_item" do
    assert_difference('HotItem.count', -1) do
      delete :destroy, id: @hot_item
    end

    assert_redirected_to hot_items_path
  end
end
