require 'test_helper'

class ShippersTmpsControllerTest < ActionController::TestCase
  setup do
    @shippers_tmp = shippers_tmps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shippers_tmps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shippers_tmp" do
    assert_difference('ShippersTmp.count') do
      post :create, shippers_tmp: { CompanyName: @shippers_tmp.CompanyName, Phone: @shippers_tmp.Phone, shipper_id: @shippers_tmp.shipper_id }
    end

    assert_redirected_to shippers_tmp_path(assigns(:shippers_tmp))
  end

  test "should show shippers_tmp" do
    get :show, id: @shippers_tmp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shippers_tmp
    assert_response :success
  end

  test "should update shippers_tmp" do
    patch :update, id: @shippers_tmp, shippers_tmp: { CompanyName: @shippers_tmp.CompanyName, Phone: @shippers_tmp.Phone, shipper_id: @shippers_tmp.shipper_id }
    assert_redirected_to shippers_tmp_path(assigns(:shippers_tmp))
  end

  test "should destroy shippers_tmp" do
    assert_difference('ShippersTmp.count', -1) do
      delete :destroy, id: @shippers_tmp
    end

    assert_redirected_to shippers_tmps_path
  end
end
