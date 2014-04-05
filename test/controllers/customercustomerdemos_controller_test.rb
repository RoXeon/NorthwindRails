require 'test_helper'

class CustomercustomerdemosControllerTest < ActionController::TestCase
  setup do
    @customercustomerdemo = customercustomerdemos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customercustomerdemos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customercustomerdemo" do
    assert_difference('Customercustomerdemo.count') do
      post :create, customercustomerdemo: { CustomerID: @customercustomerdemo.CustomerID, CustomerTypeID: @customercustomerdemo.CustomerTypeID }
    end

    assert_redirected_to customercustomerdemo_path(assigns(:customercustomerdemo))
  end

  test "should show customercustomerdemo" do
    get :show, id: @customercustomerdemo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customercustomerdemo
    assert_response :success
  end

  test "should update customercustomerdemo" do
    patch :update, id: @customercustomerdemo, customercustomerdemo: { CustomerID: @customercustomerdemo.CustomerID, CustomerTypeID: @customercustomerdemo.CustomerTypeID }
    assert_redirected_to customercustomerdemo_path(assigns(:customercustomerdemo))
  end

  test "should destroy customercustomerdemo" do
    assert_difference('Customercustomerdemo.count', -1) do
      delete :destroy, id: @customercustomerdemo
    end

    assert_redirected_to customercustomerdemos_path
  end
end
