require 'test_helper'

class JojolionsControllerTest < ActionController::TestCase
  setup do
    @jojolion = jojolions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jojolions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jojolion" do
    assert_difference('Jojolion.count') do
      post :create, jojolion: {  }
    end

    assert_redirected_to jojolion_path(assigns(:jojolion))
  end

  test "should show jojolion" do
    get :show, id: @jojolion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jojolion
    assert_response :success
  end

  test "should update jojolion" do
    put :update, id: @jojolion, jojolion: {  }
    assert_redirected_to jojolion_path(assigns(:jojolion))
  end

  test "should destroy jojolion" do
    assert_difference('Jojolion.count', -1) do
      delete :destroy, id: @jojolion
    end

    assert_redirected_to jojolions_path
  end
end
