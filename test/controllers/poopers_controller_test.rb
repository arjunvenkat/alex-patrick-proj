require 'test_helper'

class PoopersControllerTest < ActionController::TestCase
  setup do
    @pooper = poopers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poopers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pooper" do
    assert_difference('Pooper.count') do
      post :create, pooper: { interesection: @pooper.interesection, price: @pooper.price, quality: @pooper.quality }
    end

    assert_redirected_to pooper_path(assigns(:pooper))
  end

  test "should show pooper" do
    get :show, id: @pooper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pooper
    assert_response :success
  end

  test "should update pooper" do
    patch :update, id: @pooper, pooper: { interesection: @pooper.interesection, price: @pooper.price, quality: @pooper.quality }
    assert_redirected_to pooper_path(assigns(:pooper))
  end

  test "should destroy pooper" do
    assert_difference('Pooper.count', -1) do
      delete :destroy, id: @pooper
    end

    assert_redirected_to poopers_path
  end
end
