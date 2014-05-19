require 'test_helper'

class PepesControllerTest < ActionController::TestCase
  setup do
    @pepe = pepes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pepes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pepe" do
    assert_difference('Pepe.count') do
      post :create, pepe: { algo2: @pepe.algo2, algo: @pepe.algo, nombre: @pepe.nombre, nro: @pepe.nro }
    end

    assert_redirected_to pepe_path(assigns(:pepe))
  end

  test "should show pepe" do
    get :show, id: @pepe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pepe
    assert_response :success
  end

  test "should update pepe" do
    put :update, id: @pepe, pepe: { algo2: @pepe.algo2, algo: @pepe.algo, nombre: @pepe.nombre, nro: @pepe.nro }
    assert_redirected_to pepe_path(assigns(:pepe))
  end

  test "should destroy pepe" do
    assert_difference('Pepe.count', -1) do
      delete :destroy, id: @pepe
    end

    assert_redirected_to pepes_path
  end
end
