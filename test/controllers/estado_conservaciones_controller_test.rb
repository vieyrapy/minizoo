require 'test_helper'

class EstadoConservacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estado_conservacion = estado_conservaciones(:one)
  end

  test "should get index" do
    get estado_conservaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_estado_conservacion_url
    assert_response :success
  end

  test "should create estado_conservacion" do
    assert_difference('EstadoConservacion.count') do
      post estado_conservaciones_url, params: { estado_conservacion: { nombre: @estado_conservacion.nombre } }
    end

    assert_redirected_to estado_conservacion_url(EstadoConservacion.last)
  end

  test "should show estado_conservacion" do
    get estado_conservacion_url(@estado_conservacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_estado_conservacion_url(@estado_conservacion)
    assert_response :success
  end

  test "should update estado_conservacion" do
    patch estado_conservacion_url(@estado_conservacion), params: { estado_conservacion: { nombre: @estado_conservacion.nombre } }
    assert_redirected_to estado_conservacion_url(@estado_conservacion)
  end

  test "should destroy estado_conservacion" do
    assert_difference('EstadoConservacion.count', -1) do
      delete estado_conservacion_url(@estado_conservacion)
    end

    assert_redirected_to estado_conservaciones_url
  end
end
