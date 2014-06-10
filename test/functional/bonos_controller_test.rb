require 'test_helper'

class BonosControllerTest < ActionController::TestCase
  setup do
    @bono = bonos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bonos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bono" do
    assert_difference('Bono.count') do
      post :create, bono: { cant_pasajes: @bono.cant_pasajes, descripcion: @bono.descripcion, emisor: @bono.emisor, empresa_id: @bono.empresa_id, entregado: @bono.entregado, fecha_emision: @bono.fecha_emision, fecha_entregado: @bono.fecha_entregado, nro_bono: @bono.nro_bono, persona_id: @bono.persona_id }
    end

    assert_redirected_to bono_path(assigns(:bono))
  end

  test "should show bono" do
    get :show, id: @bono
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bono
    assert_response :success
  end

  test "should update bono" do
    put :update, id: @bono, bono: { cant_pasajes: @bono.cant_pasajes, descripcion: @bono.descripcion, emisor: @bono.emisor, empresa_id: @bono.empresa_id, entregado: @bono.entregado, fecha_emision: @bono.fecha_emision, fecha_entregado: @bono.fecha_entregado, nro_bono: @bono.nro_bono, persona_id: @bono.persona_id }
    assert_redirected_to bono_path(assigns(:bono))
  end

  test "should destroy bono" do
    assert_difference('Bono.count', -1) do
      delete :destroy, id: @bono
    end

    assert_redirected_to bonos_path
  end
end
