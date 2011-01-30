require 'test_helper'

class CovesControllerTest < ActionController::TestCase
  setup do
    @cove = coves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cove" do
    assert_difference('Cove.count') do
      post :create, :cove => @cove.attributes
    end

    assert_redirected_to cove_path(assigns(:cove))
  end

  test "should show cove" do
    get :show, :id => @cove.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cove.to_param
    assert_response :success
  end

  test "should update cove" do
    put :update, :id => @cove.to_param, :cove => @cove.attributes
    assert_redirected_to cove_path(assigns(:cove))
  end

  test "should destroy cove" do
    assert_difference('Cove.count', -1) do
      delete :destroy, :id => @cove.to_param
    end

    assert_redirected_to coves_path
  end
end
