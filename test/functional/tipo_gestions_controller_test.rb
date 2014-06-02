require 'test_helper'

class TipoGestionsControllerTest < ActionController::TestCase
  setup do
    @tipo_gestion = tipo_gestions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_gestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_gestion" do
    assert_difference('TipoGestion.count') do
      post :create, tipo_gestion: { nombre: @tipo_gestion.nombre }
    end

    assert_redirected_to tipo_gestion_path(assigns(:tipo_gestion))
  end

  test "should show tipo_gestion" do
    get :show, id: @tipo_gestion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_gestion
    assert_response :success
  end

  test "should update tipo_gestion" do
    put :update, id: @tipo_gestion, tipo_gestion: { nombre: @tipo_gestion.nombre }
    assert_redirected_to tipo_gestion_path(assigns(:tipo_gestion))
  end

  test "should destroy tipo_gestion" do
    assert_difference('TipoGestion.count', -1) do
      delete :destroy, id: @tipo_gestion
    end

    assert_redirected_to tipo_gestions_path
  end
end
