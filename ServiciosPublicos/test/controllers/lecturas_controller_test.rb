require 'test_helper'

class LecturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lectura = lecturas(:one)
  end

  test "should get index" do
    get lecturas_url
    assert_response :success
  end

  test "should get new" do
    get new_lectura_url
    assert_response :success
  end

  test "should create lectura" do
    assert_difference('Lectura.count') do
      post lecturas_url, params: { lectura: { fecha_actual: @lectura.fecha_actual, fecha_anterior: @lectura.fecha_anterior, lectura_actual: @lectura.lectura_actual, lectura_anterior: @lectura.lectura_anterior } }
    end

    assert_redirected_to lectura_url(Lectura.last)
  end

  test "should show lectura" do
    get lectura_url(@lectura)
    assert_response :success
  end

  test "should get edit" do
    get edit_lectura_url(@lectura)
    assert_response :success
  end

  test "should update lectura" do
    patch lectura_url(@lectura), params: { lectura: { fecha_actual: @lectura.fecha_actual, fecha_anterior: @lectura.fecha_anterior, lectura_actual: @lectura.lectura_actual, lectura_anterior: @lectura.lectura_anterior } }
    assert_redirected_to lectura_url(@lectura)
  end

  test "should destroy lectura" do
    assert_difference('Lectura.count', -1) do
      delete lectura_url(@lectura)
    end

    assert_redirected_to lecturas_url
  end
end
