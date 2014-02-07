require 'test_helper'

class LoadFundsControllerTest < ActionController::TestCase
  setup do
    @load_fund = load_funds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:load_funds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create load_fund" do
    assert_difference('LoadFund.count') do
      post :create, load_fund: {  }
    end

    assert_redirected_to load_fund_path(assigns(:load_fund))
  end

  test "should show load_fund" do
    get :show, id: @load_fund
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @load_fund
    assert_response :success
  end

  test "should update load_fund" do
    patch :update, id: @load_fund, load_fund: {  }
    assert_redirected_to load_fund_path(assigns(:load_fund))
  end

  test "should destroy load_fund" do
    assert_difference('LoadFund.count', -1) do
      delete :destroy, id: @load_fund
    end

    assert_redirected_to load_funds_path
  end
end
