require 'test_helper'

class TramosControllerTest < ActionController::TestCase
  setup do
    @tramo = tramos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tramos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tramo" do
    assert_difference('Tramo.count') do
      post :create, tramo: { domingo_cant: @tramo.domingo_cant, empresa_transporte_id: @tramo.empresa_transporte_id, jueves_cant: @tramo.jueves_cant, localidad_destino_id: @tramo.localidad_destino_id, localidad_origen_id: @tramo.localidad_origen_id, lunes_cant: @tramo.lunes_cant, martes_cant: @tramo.martes_cant, miercoles_cant: @tramo.miercoles_cant, persona_id: @tramo.persona_id, sabado_cant: @tramo.sabado_cant, viernes_cant: @tramo.viernes_cant }
    end

    assert_redirected_to tramo_path(assigns(:tramo))
  end

  test "should show tramo" do
    get :show, id: @tramo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tramo
    assert_response :success
  end

  test "should update tramo" do
    put :update, id: @tramo, tramo: { domingo_cant: @tramo.domingo_cant, empresa_transporte_id: @tramo.empresa_transporte_id, jueves_cant: @tramo.jueves_cant, localidad_destino_id: @tramo.localidad_destino_id, localidad_origen_id: @tramo.localidad_origen_id, lunes_cant: @tramo.lunes_cant, martes_cant: @tramo.martes_cant, miercoles_cant: @tramo.miercoles_cant, persona_id: @tramo.persona_id, sabado_cant: @tramo.sabado_cant, viernes_cant: @tramo.viernes_cant }
    assert_redirected_to tramo_path(assigns(:tramo))
  end

  test "should destroy tramo" do
    assert_difference('Tramo.count', -1) do
      delete :destroy, id: @tramo
    end

    assert_redirected_to tramos_path
  end
end
