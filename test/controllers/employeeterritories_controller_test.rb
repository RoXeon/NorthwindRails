require 'test_helper'

class EmployeeterritoriesControllerTest < ActionController::TestCase
  setup do
    @employee_territory = employeeterritories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:EmployeeTerritories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_territory" do
    assert_difference('EmployeeTerritory.count') do
      post :create, employee_territory: { EmployeeID: @employee_territory.EmployeeID, TerritoryID: @employee_territory.TerritoryID }
    end

    assert_redirected_to employeeterritory_path(assigns(:employee_territory))
  end

  test "should show employee_territory" do
    get :show, id: @employee_territory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_territory
    assert_response :success
  end

  test "should update employee_territory" do
    patch :update, id: @employee_territory, employee_territory: { EmployeeID: @employee_territory.EmployeeID, TerritoryID: @employee_territory.TerritoryID }
    assert_redirected_to employeeterritory_path(assigns(:employee_territory))
  end

  test "should destroy employee_territory" do
    assert_difference('EmployeeTerritory.count', -1) do
      delete :destroy, id: @employee_territory
    end

    assert_redirected_to employeeterritories_path
  end
end
