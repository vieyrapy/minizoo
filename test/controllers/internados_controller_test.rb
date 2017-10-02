require 'test_helper'

class InternadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @internado = internados(:one)
  end

  test "should get index" do
    get internados_url
    assert_response :success
  end

  test "should get new" do
    get new_internado_url
    assert_response :success
  end

  test "should create internado" do
    assert_difference('Internado.count') do
      post internados_url, params: { internado: { dar_alta: @internado.dar_alta, descripcion: @internado.descripcion, dosis: @internado.dosis, fecha_fin: @internado.fecha_fin, fecha_inicio: @internado.fecha_inicio, medicamento: @internado.medicamento } }
    end

    assert_redirected_to internado_url(Internado.last)
  end

  test "should show internado" do
    get internado_url(@internado)
    assert_response :success
  end

  test "should get edit" do
    get edit_internado_url(@internado)
    assert_response :success
  end

  test "should update internado" do
    patch internado_url(@internado), params: { internado: { dar_alta: @internado.dar_alta, descripcion: @internado.descripcion, dosis: @internado.dosis, fecha_fin: @internado.fecha_fin, fecha_inicio: @internado.fecha_inicio, medicamento: @internado.medicamento } }
    assert_redirected_to internado_url(@internado)
  end

  test "should destroy internado" do
    assert_difference('Internado.count', -1) do
      delete internado_url(@internado)
    end

    assert_redirected_to internados_url
  end
end
