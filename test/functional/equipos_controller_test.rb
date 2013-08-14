require 'test_helper'

class EquiposControllerTest < ActionController::TestCase
  setup do
    @equipo = equipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipo" do
    assert_difference('Equipo.count') do
      post :create, equipo: { cantidad: @equipo.cantidad, descripcion: @equipo.descripcion, numeroparte: @equipo.numeroparte, observacion: @equipo.observacion, parteobra_id: @equipo.parteobra_id, partidacontrol: @equipo.partidacontrol, unidad: @equipo.unidad }
    end

    assert_redirected_to equipo_path(assigns(:equipo))
  end

  test "should show equipo" do
    get :show, id: @equipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipo
    assert_response :success
  end

  test "should update equipo" do
    put :update, id: @equipo, equipo: { cantidad: @equipo.cantidad, descripcion: @equipo.descripcion, numeroparte: @equipo.numeroparte, observacion: @equipo.observacion, parteobra_id: @equipo.parteobra_id, partidacontrol: @equipo.partidacontrol, unidad: @equipo.unidad }
    assert_redirected_to equipo_path(assigns(:equipo))
  end

  test "should destroy equipo" do
    assert_difference('Equipo.count', -1) do
      delete :destroy, id: @equipo
    end

    assert_redirected_to equipos_path
  end
end
