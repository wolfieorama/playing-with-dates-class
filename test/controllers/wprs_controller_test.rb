require 'test_helper'

class WprsControllerTest < ActionController::TestCase
  setup do
    @wpr = wprs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wprs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wpr" do
    assert_difference('Wpr.count') do
      post :create, wpr: { a_score: @wpr.a_score, c_score: @wpr.c_score, n_score: @wpr.n_score }
    end

    assert_redirected_to wpr_path(assigns(:wpr))
  end

  test "should show wpr" do
    get :show, id: @wpr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wpr
    assert_response :success
  end

  test "should update wpr" do
    patch :update, id: @wpr, wpr: { a_score: @wpr.a_score, c_score: @wpr.c_score, n_score: @wpr.n_score }
    assert_redirected_to wpr_path(assigns(:wpr))
  end

  test "should destroy wpr" do
    assert_difference('Wpr.count', -1) do
      delete :destroy, id: @wpr
    end

    assert_redirected_to wprs_path
  end
end
