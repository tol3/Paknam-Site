require 'test_helper'

class ChartControllerTest < ActionController::TestCase
  test "should get manager" do
    get :manager
    assert_response :success
  end

  test "should get councillor" do
    get :councillor
    assert_response :success
  end

  test "should get clerk" do
    get :clerk
    assert_response :success
  end

  test "should get competent" do
    get :competent
    assert_response :success
  end

end
