require 'test_helper'

class UsstatesControllerTest < ActionController::TestCase
  setup do
    @usstate = usstates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usstates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usstate" do
    assert_difference('Usstate.count') do
      post :create, usstate: { StateAbbr: @usstate.StateAbbr, StateID: @usstate.StateID, StateName: @usstate.StateName, StateRegion: @usstate.StateRegion }
    end

    assert_redirected_to usstate_path(assigns(:usstate))
  end

  test "should show usstate" do
    get :show, id: @usstate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usstate
    assert_response :success
  end

  test "should update usstate" do
    patch :update, id: @usstate, usstate: { StateAbbr: @usstate.StateAbbr, StateID: @usstate.StateID, StateName: @usstate.StateName, StateRegion: @usstate.StateRegion }
    assert_redirected_to usstate_path(assigns(:usstate))
  end

  test "should destroy usstate" do
    assert_difference('Usstate.count', -1) do
      delete :destroy, id: @usstate
    end

    assert_redirected_to usstates_path
  end
end
