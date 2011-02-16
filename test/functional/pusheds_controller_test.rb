require 'test_helper'

class PushedsControllerTest < ActionController::TestCase
  setup do
    @pushed = pusheds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pusheds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pushed" do
    assert_difference('Pushed.count') do
      post :create, :pushed => @pushed.attributes
    end

    assert_redirected_to pushed_path(assigns(:pushed))
  end

  test "should show pushed" do
    get :show, :id => @pushed.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pushed.to_param
    assert_response :success
  end

  test "should update pushed" do
    put :update, :id => @pushed.to_param, :pushed => @pushed.attributes
    assert_redirected_to pushed_path(assigns(:pushed))
  end

  test "should destroy pushed" do
    assert_difference('Pushed.count', -1) do
      delete :destroy, :id => @pushed.to_param
    end

    assert_redirected_to pusheds_path
  end
end
