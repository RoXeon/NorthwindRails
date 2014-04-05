require 'test_helper'

class CustomerdemographicsControllerTest < ActionController::TestCase
  setup do
    @customerdemographic = customerdemographics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customerdemographics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customerdemographic" do
    assert_difference('Customerdemographic.count') do
      post :create, customerdemographic: { CustomerDesc: @customerdemographic.CustomerDesc, CustomerTypeID: @customerdemographic.CustomerTypeID }
    end

    assert_redirected_to customerdemographic_path(assigns(:customerdemographic))
  end

  test "should show customerdemographic" do
    get :show, id: @customerdemographic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customerdemographic
    assert_response :success
  end

  test "should update customerdemographic" do
    patch :update, id: @customerdemographic, customerdemographic: { CustomerDesc: @customerdemographic.CustomerDesc, CustomerTypeID: @customerdemographic.CustomerTypeID }
    assert_redirected_to customerdemographic_path(assigns(:customerdemographic))
  end

  test "should destroy customerdemographic" do
    assert_difference('Customerdemographic.count', -1) do
      delete :destroy, id: @customerdemographic
    end

    assert_redirected_to customerdemographics_path
  end
end
