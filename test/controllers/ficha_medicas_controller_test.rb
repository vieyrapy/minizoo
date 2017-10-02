require 'test_helper'

class FichaMedicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ficha_medica = ficha_medicas(:one)
  end

  test "should get index" do
    get ficha_medicas_url
    assert_response :success
  end

  test "should get new" do
    get new_ficha_medica_url
    assert_response :success
  end

  test "should create ficha_medica" do
    assert_difference('FichaMedica.count') do
      post ficha_medicas_url, params: { ficha_medica: { archivos: @ficha_medica.archivos, descripcion: @ficha_medica.descripcion, dolencia: @ficha_medica.dolencia, enfermedad: @ficha_medica.enfermedad, estado_salud: @ficha_medica.estado_salud, fecha_ingreso: @ficha_medica.fecha_ingreso, internacion: @ficha_medica.internacion } }
    end

    assert_redirected_to ficha_medica_url(FichaMedica.last)
  end

  test "should show ficha_medica" do
    get ficha_medica_url(@ficha_medica)
    assert_response :success
  end

  test "should get edit" do
    get edit_ficha_medica_url(@ficha_medica)
    assert_response :success
  end

  test "should update ficha_medica" do
    patch ficha_medica_url(@ficha_medica), params: { ficha_medica: { archivos: @ficha_medica.archivos, descripcion: @ficha_medica.descripcion, dolencia: @ficha_medica.dolencia, enfermedad: @ficha_medica.enfermedad, estado_salud: @ficha_medica.estado_salud, fecha_ingreso: @ficha_medica.fecha_ingreso, internacion: @ficha_medica.internacion } }
    assert_redirected_to ficha_medica_url(@ficha_medica)
  end

  test "should destroy ficha_medica" do
    assert_difference('FichaMedica.count', -1) do
      delete ficha_medica_url(@ficha_medica)
    end

    assert_redirected_to ficha_medicas_url
  end
end
