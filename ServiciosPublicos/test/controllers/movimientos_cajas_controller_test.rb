require 'test_helper'

class MovimientosCajasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimiento_caja = movimientos_cajas(:one)
  end

  test "should get index" do
    get movimientos_cajas_url
    assert_response :success
  end

  test "should get new" do
    get new_movimiento_caja_url
    assert_response :success
  end

  test "should create movimiento_caja" do
    assert_difference('MovimientoCaja.count') do
      post movimientos_cajas_url, params: { movimiento_caja: { descripcion: @movimiento_caja.descripcion, monto_total: @movimiento_caja.monto_total, tipo: @movimiento_caja.tipo } }
    end

    assert_redirected_to movimiento_caja_url(MovimientoCaja.last)
  end

  test "should show movimiento_caja" do
    get movimiento_caja_url(@movimiento_caja)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimiento_caja_url(@movimiento_caja)
    assert_response :success
  end

  test "should update movimiento_caja" do
    patch movimiento_caja_url(@movimiento_caja), params: { movimiento_caja: { descripcion: @movimiento_caja.descripcion, monto_total: @movimiento_caja.monto_total, tipo: @movimiento_caja.tipo } }
    assert_redirected_to movimiento_caja_url(@movimiento_caja)
  end

  test "should destroy movimiento_caja" do
    assert_difference('MovimientoCaja.count', -1) do
      delete movimiento_caja_url(@movimiento_caja)
    end

    assert_redirected_to movimientos_cajas_url
  end
end
