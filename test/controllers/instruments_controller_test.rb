require 'test_helper'

class InstrumentsControllerTest < ActionController::TestCase
  setup do
    @instrument = instruments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instruments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instrument" do
    assert_difference('Instrument.count') do
      post :create, instrument: { brand: @instrument.brand, color: @instrument.color, description: @instrument.description, dimension: @instrument.dimension, made_by_country: @instrument.made_by_country, made_with: @instrument.made_with, modal_number: @instrument.modal_number, price: @instrument.price, quantity: @instrument.quantity, specification: @instrument.specification, title: @instrument.title, weight: @instrument.weight }
    end

    assert_redirected_to instrument_path(assigns(:instrument))
  end

  test "should show instrument" do
    get :show, id: @instrument
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instrument
    assert_response :success
  end

  test "should update instrument" do
    patch :update, id: @instrument, instrument: { brand: @instrument.brand, color: @instrument.color, description: @instrument.description, dimension: @instrument.dimension, made_by_country: @instrument.made_by_country, made_with: @instrument.made_with, modal_number: @instrument.modal_number, price: @instrument.price, quantity: @instrument.quantity, specification: @instrument.specification, title: @instrument.title, weight: @instrument.weight }
    assert_redirected_to instrument_path(assigns(:instrument))
  end

  test "should destroy instrument" do
    assert_difference('Instrument.count', -1) do
      delete :destroy, id: @instrument
    end

    assert_redirected_to instruments_path
  end
end
