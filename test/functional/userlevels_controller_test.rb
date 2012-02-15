require 'test_helper'

class UserlevelsControllerTest < ActionController::TestCase
  setup do
    @userlevel = userlevels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userlevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userlevel" do
    assert_difference('Userlevel.count') do
      post :create, userlevel: @userlevel.attributes
    end

    assert_redirected_to userlevel_path(assigns(:userlevel))
  end

  test "should show userlevel" do
    get :show, id: @userlevel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userlevel
    assert_response :success
  end

  test "should update userlevel" do
    put :update, id: @userlevel, userlevel: @userlevel.attributes
    assert_redirected_to userlevel_path(assigns(:userlevel))
  end

  test "should destroy userlevel" do
    assert_difference('Userlevel.count', -1) do
      delete :destroy, id: @userlevel
    end

    assert_redirected_to userlevels_path
  end
end
