require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get how_it_works" do
    get :how_it_works
    assert_response :success
  end

  test "should get get_rewarded" do
    get :get_rewarded
    assert_response :success
  end

  test "should get support" do
    get :support
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get fine_print" do
    get :fine_print
    assert_response :success
  end

  test "should get for_bars" do
    get :for_bars
    assert_response :success
  end

end
