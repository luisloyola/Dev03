require 'test_helper'

class UserreunionsControllerTest < ActionController::TestCase
  setup do
    @userreunion = userreunions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userreunions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userreunion" do
    assert_difference('Userreunion.count') do
      post :create, userreunion: { presente: @userreunion.presente, secreatrio: @userreunion.secreatrio }
    end

    assert_redirected_to userreunion_path(assigns(:userreunion))
  end

  test "should show userreunion" do
    get :show, id: @userreunion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userreunion
    assert_response :success
  end

  test "should update userreunion" do
    patch :update, id: @userreunion, userreunion: { presente: @userreunion.presente, secreatrio: @userreunion.secreatrio }
    assert_redirected_to userreunion_path(assigns(:userreunion))
  end

  test "should destroy userreunion" do
    assert_difference('Userreunion.count', -1) do
      delete :destroy, id: @userreunion
    end

    assert_redirected_to userreunions_path
  end
end
