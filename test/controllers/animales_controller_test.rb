require 'test_helper'

class AnimalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal = animales(:one)
  end

  test "should get index" do
    get animales_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_url
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post animales_url, params: { animal: { descripcion: @animal.descripcion, edad: @animal.edad, macho: @animal.macho, nombre_cientifico: @animal.nombre_cientifico, nombre_comun: @animal.nombre_comun, origen: @animal.origen } }
    end

    assert_redirected_to animal_url(Animal.last)
  end

  test "should show animal" do
    get animal_url(@animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_url(@animal)
    assert_response :success
  end

  test "should update animal" do
    patch animal_url(@animal), params: { animal: { descripcion: @animal.descripcion, edad: @animal.edad, macho: @animal.macho, nombre_cientifico: @animal.nombre_cientifico, nombre_comun: @animal.nombre_comun, origen: @animal.origen } }
    assert_redirected_to animal_url(@animal)
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete animal_url(@animal)
    end

    assert_redirected_to animales_url
  end
end
