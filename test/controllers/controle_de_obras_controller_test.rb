require 'test_helper'

class ControleDeObrasControllerTest < ActionController::TestCase
  setup do
    @controle_de_obra = controle_de_obras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controle_de_obras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create controle_de_obra" do
    assert_difference('ControleDeObra.count') do
      post :create, controle_de_obra: { data: @controle_de_obra.data, fornecedor: @controle_de_obra.fornecedor, nf: @controle_de_obra.nf, obra_id: @controle_de_obra.obra_id, pago: @controle_de_obra.pago, recebido: @controle_de_obra.recebido }
    end

    assert_redirected_to controle_de_obra_path(assigns(:controle_de_obra))
  end

  test "should show controle_de_obra" do
    get :show, id: @controle_de_obra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @controle_de_obra
    assert_response :success
  end

  test "should update controle_de_obra" do
    patch :update, id: @controle_de_obra, controle_de_obra: { data: @controle_de_obra.data, fornecedor: @controle_de_obra.fornecedor, nf: @controle_de_obra.nf, obra_id: @controle_de_obra.obra_id, pago: @controle_de_obra.pago, recebido: @controle_de_obra.recebido }
    assert_redirected_to controle_de_obra_path(assigns(:controle_de_obra))
  end

  test "should destroy controle_de_obra" do
    assert_difference('ControleDeObra.count', -1) do
      delete :destroy, id: @controle_de_obra
    end

    assert_redirected_to controle_de_obras_path
  end
end
