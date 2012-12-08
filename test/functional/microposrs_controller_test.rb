require 'test_helper'

class MicroposrsControllerTest < ActionController::TestCase
  setup do
    @microposr = microposrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microposrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microposr" do
    assert_difference('Microposr.count') do
      post :create, microposr: { content: @microposr.content, user_id: @microposr.user_id }
    end

    assert_redirected_to microposr_path(assigns(:microposr))
  end

  test "should show microposr" do
    get :show, id: @microposr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microposr
    assert_response :success
  end

  test "should update microposr" do
    put :update, id: @microposr, microposr: { content: @microposr.content, user_id: @microposr.user_id }
    assert_redirected_to microposr_path(assigns(:microposr))
  end

  test "should destroy microposr" do
    assert_difference('Microposr.count', -1) do
      delete :destroy, id: @microposr
    end

    assert_redirected_to microposrs_path
  end
end
