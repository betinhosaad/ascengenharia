require 'test_helper'

class ClimasControllerTest < ActionController::TestCase
  setup do
    @clima = climas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:climas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clima" do
    assert_difference('Clima.count') do
      post :create, clima: { chuva: @clima.chuva, impraticavel: @clima.impraticavel, nublado: @clima.nublado, sol: @clima.sol }
    end

    assert_redirected_to clima_path(assigns(:clima))
  end

  test "should show clima" do
    get :show, id: @clima
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clima
    assert_response :success
  end

  test "should update clima" do
    patch :update, id: @clima, clima: { chuva: @clima.chuva, impraticavel: @clima.impraticavel, nublado: @clima.nublado, sol: @clima.sol }
    assert_redirected_to clima_path(assigns(:clima))
  end

  test "should destroy clima" do
    assert_difference('Clima.count', -1) do
      delete :destroy, id: @clima
    end

    assert_redirected_to climas_path
  end
end
