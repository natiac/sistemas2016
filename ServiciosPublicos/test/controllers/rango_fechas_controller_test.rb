require 'test_helper'

class RangoFechasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rango_fecha = rango_fechas(:one)
  end

  test "should get index" do
    get rango_fechas_url
    assert_response :success
  end

  test "should get new" do
    get new_rango_fecha_url
    assert_response :success
  end

  test "should create rango_fecha" do
    assert_difference('RangoFecha.count') do
      post rango_fechas_url, params: { rango_fecha: { descripcion: @rango_fecha.descripcion } }
    end

    assert_redirected_to rango_fecha_url(RangoFecha.last)
  end

  test "should show rango_fecha" do
    get rango_fecha_url(@rango_fecha)
    assert_response :success
  end

  test "should get edit" do
    get edit_rango_fecha_url(@rango_fecha)
    assert_response :success
  end

  test "should update rango_fecha" do
    patch rango_fecha_url(@rango_fecha), params: { rango_fecha: { descripcion: @rango_fecha.descripcion } }
    assert_redirected_to rango_fecha_url(@rango_fecha)
  end

  test "should destroy rango_fecha" do
    assert_difference('RangoFecha.count', -1) do
      delete rango_fecha_url(@rango_fecha)
    end

    assert_redirected_to rango_fechas_url
  end
end
