require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  test "should get info" do
    get :info
    assert_response :success
  end

  test "should get pucchasing" do
    get :pucchasing
    assert_response :success
  end

  test "should get recruit" do
    get :recruit
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
