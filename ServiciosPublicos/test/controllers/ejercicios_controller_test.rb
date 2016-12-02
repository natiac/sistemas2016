require 'test_helper'

class EjerciciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ejercicio = ejercicios(:one)
  end

  test "should get index" do
    get ejercicios_url
    assert_response :success
  end

  test "should get new" do
    get new_ejercicio_url
    assert_response :success
  end

  test "should create ejercicio" do
    assert_difference('Ejercicio.count') do
      post ejercicios_url, params: { ejercicio: { anho: @ejercicio.anho, estado: @ejercicio.estado } }
    end

    assert_redirected_to ejercicio_url(Ejercicio.last)
  end

  test "should show ejercicio" do
    get ejercicio_url(@ejercicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_ejercicio_url(@ejercicio)
    assert_response :success
  end

  test "should update ejercicio" do
    patch ejercicio_url(@ejercicio), params: { ejercicio: { anho: @ejercicio.anho, estado: @ejercicio.estado } }
    assert_redirected_to ejercicio_url(@ejercicio)
  end

  test "should destroy ejercicio" do
    assert_difference('Ejercicio.count', -1) do
      delete ejercicio_url(@ejercicio)
    end

    assert_redirected_to ejercicios_url
  end
end
