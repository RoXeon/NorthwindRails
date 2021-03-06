require 'test_helper'

class UsstatesControllerTest < ActionController::TestCase
  setup do
    @us_state = usstates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:UsStates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create us_state" do
    assert_difference('UsState.count') do
      post :create, us_state: { StateAbbr: @us_state.StateAbbr, StateID: @us_state.StateID, StateName: @us_state.StateName, StateRegion: @us_state.StateRegion }
    end

    assert_redirected_to usstate_path(assigns(:us_state))
  end

  test "should show us_state" do
    get :show, id: @us_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @us_state
    assert_response :success
  end

  test "should update us_state" do
    patch :update, id: @us_state, us_state: { StateAbbr: @us_state.StateAbbr, StateID: @us_state.StateID, StateName: @us_state.StateName, StateRegion: @us_state.StateRegion }
    assert_redirected_to usstate_path(assigns(:us_state))
  end

  test "should destroy us_state" do
    assert_difference('UsState.count', -1) do
      delete :destroy, id: @us_state
    end

    assert_redirected_to usstates_path
  end
end
