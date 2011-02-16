require 'test_helper'

class HelpersControllerTest < ActionController::TestCase
  setup do
    @helper = helpers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:helpers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create helper" do
    assert_difference('Helper.count') do
      post :create, :helper => @helper.attributes
    end

    assert_redirected_to helper_path(assigns(:helper))
  end

  test "should show helper" do
    get :show, :id => @helper.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @helper.to_param
    assert_response :success
  end

  test "should update helper" do
    put :update, :id => @helper.to_param, :helper => @helper.attributes
    assert_redirected_to helper_path(assigns(:helper))
  end

  test "should destroy helper" do
    assert_difference('Helper.count', -1) do
      delete :destroy, :id => @helper.to_param
    end

    assert_redirected_to helpers_path
  end
end
