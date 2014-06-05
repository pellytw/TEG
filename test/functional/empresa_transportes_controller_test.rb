require 'test_helper'

class EmpresaTransportesControllerTest < ActionController::TestCase
  setup do
    @empresa_transporte = empresa_transportes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresa_transportes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresa_transporte" do
    assert_difference('EmpresaTransporte.count') do
      post :create, empresa_transporte: { localidad_id: @empresa_transporte.localidad_id, nombre: @empresa_transporte.nombre }
    end

    assert_redirected_to empresa_transporte_path(assigns(:empresa_transporte))
  end

  test "should show empresa_transporte" do
    get :show, id: @empresa_transporte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empresa_transporte
    assert_response :success
  end

  test "should update empresa_transporte" do
    put :update, id: @empresa_transporte, empresa_transporte: { localidad_id: @empresa_transporte.localidad_id, nombre: @empresa_transporte.nombre }
    assert_redirected_to empresa_transporte_path(assigns(:empresa_transporte))
  end

  test "should destroy empresa_transporte" do
    assert_difference('EmpresaTransporte.count', -1) do
      delete :destroy, id: @empresa_transporte
    end

    assert_redirected_to empresa_transportes_path
  end
end
