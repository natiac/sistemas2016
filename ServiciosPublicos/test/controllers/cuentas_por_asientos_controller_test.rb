require 'test_helper'

class CuentasPorAsientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuentas_por_asiento = cuentas_por_asientos(:one)
  end

  test "should get index" do
    get cuentas_por_asientos_url
    assert_response :success
  end

  test "should get new" do
    get new_cuentas_por_asiento_url
    assert_response :success
  end

  test "should create cuentas_por_asiento" do
    assert_difference('CuentasPorAsiento.count') do
      post cuentas_por_asientos_url, params: { cuentas_por_asiento: { columna: @cuentas_por_asiento.columna, monto: @cuentas_por_asiento.monto, observacion: @cuentas_por_asiento.observacion } }
    end

    assert_redirected_to cuentas_por_asiento_url(CuentasPorAsiento.last)
  end

  test "should show cuentas_por_asiento" do
    get cuentas_por_asiento_url(@cuentas_por_asiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuentas_por_asiento_url(@cuentas_por_asiento)
    assert_response :success
  end

  test "should update cuentas_por_asiento" do
    patch cuentas_por_asiento_url(@cuentas_por_asiento), params: { cuentas_por_asiento: { columna: @cuentas_por_asiento.columna, monto: @cuentas_por_asiento.monto, observacion: @cuentas_por_asiento.observacion } }
    assert_redirected_to cuentas_por_asiento_url(@cuentas_por_asiento)
  end

  test "should destroy cuentas_por_asiento" do
    assert_difference('CuentasPorAsiento.count', -1) do
      delete cuentas_por_asiento_url(@cuentas_por_asiento)
    end

    assert_redirected_to cuentas_por_asientos_url
  end
end
