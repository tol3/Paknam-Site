require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  test "should get budget" do
    get :budget
    assert_response :success
  end

  test "should get conference" do
    get :conference
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
