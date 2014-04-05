require 'test_helper'

class TerritoriesControllerTest < ActionController::TestCase
  setup do
    @territory = territories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:territories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create territory" do
    assert_difference('Territory.count') do
      post :create, territory: { RegionID: @territory.RegionID, TerritoryDescription: @territory.TerritoryDescription, TerritoryID: @territory.TerritoryID }
    end

    assert_redirected_to territory_path(assigns(:territory))
  end

  test "should show territory" do
    get :show, id: @territory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @territory
    assert_response :success
  end

  test "should update territory" do
    patch :update, id: @territory, territory: { RegionID: @territory.RegionID, TerritoryDescription: @territory.TerritoryDescription, TerritoryID: @territory.TerritoryID }
    assert_redirected_to territory_path(assigns(:territory))
  end

  test "should destroy territory" do
    assert_difference('Territory.count', -1) do
      delete :destroy, id: @territory
    end

    assert_redirected_to territories_path
  end
end