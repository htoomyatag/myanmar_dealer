require 'test_helper'

class BuyerReportsControllerTest < ActionController::TestCase
  setup do
    @buyer_report = buyer_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buyer_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buyer_report" do
    assert_difference('BuyerReport.count') do
      post :create, buyer_report: { description: @buyer_report.description, purchase_date: @buyer_report.purchase_date, title: @buyer_report.title }
    end

    assert_redirected_to buyer_report_path(assigns(:buyer_report))
  end

  test "should show buyer_report" do
    get :show, id: @buyer_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buyer_report
    assert_response :success
  end

  test "should update buyer_report" do
    patch :update, id: @buyer_report, buyer_report: { description: @buyer_report.description, purchase_date: @buyer_report.purchase_date, title: @buyer_report.title }
    assert_redirected_to buyer_report_path(assigns(:buyer_report))
  end

  test "should destroy buyer_report" do
    assert_difference('BuyerReport.count', -1) do
      delete :destroy, id: @buyer_report
    end

    assert_redirected_to buyer_reports_path
  end
end
