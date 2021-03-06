require 'test_helper'

class CustomerdemographicsControllerTest < ActionController::TestCase
  setup do
    @customer_demographic = customerdemographics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:CustomerDemographics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_demographic" do
    assert_difference('CustomerDemographic.count') do
      post :create, customer_demographic: { CustomerDesc: @customer_demographic.CustomerDesc, CustomerTypeID: @customer_demographic.CustomerTypeID }
    end

    assert_redirected_to customerdemographic_path(assigns(:customer_demographic))
  end

  test "should show customer_demographic" do
    get :show, id: @customer_demographic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_demographic
    assert_response :success
  end

  test "should update customer_demographic" do
    patch :update, id: @customer_demographic, customer_demographic: { CustomerDesc: @customer_demographic.CustomerDesc, CustomerTypeID: @customer_demographic.CustomerTypeID }
    assert_redirected_to customerdemographic_path(assigns(:customer_demographic))
  end

  test "should destroy customer_demographic" do
    assert_difference('CustomerDemographic.count', -1) do
      delete :destroy, id: @customer_demographic
    end

    assert_redirected_to customerdemographics_path
  end
end
