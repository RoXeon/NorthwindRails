require 'test_helper'

class EmployeeterritoriesControllerTest < ActionController::TestCase
  setup do
    @employeeterritory = employeeterritories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employeeterritories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employeeterritory" do
    assert_difference('Employeeterritory.count') do
      post :create, employeeterritory: { EmployeeID: @employeeterritory.EmployeeID, TerritoryID: @employeeterritory.TerritoryID }
    end

    assert_redirected_to employeeterritory_path(assigns(:employeeterritory))
  end

  test "should show employeeterritory" do
    get :show, id: @employeeterritory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employeeterritory
    assert_response :success
  end

  test "should update employeeterritory" do
    patch :update, id: @employeeterritory, employeeterritory: { EmployeeID: @employeeterritory.EmployeeID, TerritoryID: @employeeterritory.TerritoryID }
    assert_redirected_to employeeterritory_path(assigns(:employeeterritory))
  end

  test "should destroy employeeterritory" do
    assert_difference('Employeeterritory.count', -1) do
      delete :destroy, id: @employeeterritory
    end

    assert_redirected_to employeeterritories_path
  end
end
