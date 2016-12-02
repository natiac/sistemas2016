require 'test_helper'

class MovimientoDeCajasDetallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimiento_de_cajas_detalle = movimiento_de_cajas_detalles(:one)
  end

  test "should get index" do
    get movimiento_de_cajas_detalles_url
    assert_response :success
  end

  test "should get new" do
    get new_movimiento_de_cajas_detalle_url
    assert_response :success
  end

  test "should create movimiento_de_cajas_detalle" do
    assert_difference('MovimientoDeCajasDetalle.count') do
      post movimiento_de_cajas_detalles_url, params: { movimiento_de_cajas_detalle: { monto_parcial: @movimiento_de_cajas_detalle.monto_parcial } }
    end

    assert_redirected_to movimiento_de_cajas_detalle_url(MovimientoDeCajasDetalle.last)
  end

  test "should show movimiento_de_cajas_detalle" do
    get movimiento_de_cajas_detalle_url(@movimiento_de_cajas_detalle)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimiento_de_cajas_detalle_url(@movimiento_de_cajas_detalle)
    assert_response :success
  end

  test "should update movimiento_de_cajas_detalle" do
    patch movimiento_de_cajas_detalle_url(@movimiento_de_cajas_detalle), params: { movimiento_de_cajas_detalle: { monto_parcial: @movimiento_de_cajas_detalle.monto_parcial } }
    assert_redirected_to movimiento_de_cajas_detalle_url(@movimiento_de_cajas_detalle)
  end

  test "should destroy movimiento_de_cajas_detalle" do
    assert_difference('MovimientoDeCajasDetalle.count', -1) do
      delete movimiento_de_cajas_detalle_url(@movimiento_de_cajas_detalle)
    end

    assert_redirected_to movimiento_de_cajas_detalles_url
  end
end
