require 'test_helper'

class EstadoMedicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estado_medico = estado_medicos(:one)
  end

  test "should get index" do
    get estado_medicos_url
    assert_response :success
  end

  test "should get new" do
    get new_estado_medico_url
    assert_response :success
  end

  test "should create estado_medico" do
    assert_difference('EstadoMedico.count') do
      post estado_medicos_url, params: { estado_medico: { nombre: @estado_medico.nombre } }
    end

    assert_redirected_to estado_medico_url(EstadoMedico.last)
  end

  test "should show estado_medico" do
    get estado_medico_url(@estado_medico)
    assert_response :success
  end

  test "should get edit" do
    get edit_estado_medico_url(@estado_medico)
    assert_response :success
  end

  test "should update estado_medico" do
    patch estado_medico_url(@estado_medico), params: { estado_medico: { nombre: @estado_medico.nombre } }
    assert_redirected_to estado_medico_url(@estado_medico)
  end

  test "should destroy estado_medico" do
    assert_difference('EstadoMedico.count', -1) do
      delete estado_medico_url(@estado_medico)
    end

    assert_redirected_to estado_medicos_url
  end
end
