require 'test_helper'

class TrainingAndSchoolsControllerTest < ActionController::TestCase
  setup do
    @training_and_school = training_and_schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:training_and_schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training_and_school" do
    assert_difference('TrainingAndSchool.count') do
      post :create, training_and_school: { description: @training_and_school.description, fees: @training_and_school.fees, period: @training_and_school.period, school: @training_and_school.school, title: @training_and_school.title }
    end

    assert_redirected_to training_and_school_path(assigns(:training_and_school))
  end

  test "should show training_and_school" do
    get :show, id: @training_and_school
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @training_and_school
    assert_response :success
  end

  test "should update training_and_school" do
    patch :update, id: @training_and_school, training_and_school: { description: @training_and_school.description, fees: @training_and_school.fees, period: @training_and_school.period, school: @training_and_school.school, title: @training_and_school.title }
    assert_redirected_to training_and_school_path(assigns(:training_and_school))
  end

  test "should destroy training_and_school" do
    assert_difference('TrainingAndSchool.count', -1) do
      delete :destroy, id: @training_and_school
    end

    assert_redirected_to training_and_schools_path
  end
end
