require 'test_helper'

class ArqueoCajasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arqueo_caja = arqueo_cajas(:one)
  end

  test "should get index" do
    get arqueo_cajas_url
    assert_response :success
  end

  test "should get new" do
    get new_arqueo_caja_url
    assert_response :success
  end

  test "should create arqueo_caja" do
    assert_difference('ArqueoCaja.count') do
      post arqueo_cajas_url, params: { arqueo_caja: { diferencia: @arqueo_caja.diferencia, fecha: @arqueo_caja.fecha, monto_en_caja: @arqueo_caja.monto_en_caja, monto_real: @arqueo_caja.monto_real } }
    end

    assert_redirected_to arqueo_caja_url(ArqueoCaja.last)
  end

  test "should show arqueo_caja" do
    get arqueo_caja_url(@arqueo_caja)
    assert_response :success
  end

  test "should get edit" do
    get edit_arqueo_caja_url(@arqueo_caja)
    assert_response :success
  end

  test "should update arqueo_caja" do
    patch arqueo_caja_url(@arqueo_caja), params: { arqueo_caja: { diferencia: @arqueo_caja.diferencia, fecha: @arqueo_caja.fecha, monto_en_caja: @arqueo_caja.monto_en_caja, monto_real: @arqueo_caja.monto_real } }
    assert_redirected_to arqueo_caja_url(@arqueo_caja)
  end

  test "should destroy arqueo_caja" do
    assert_difference('ArqueoCaja.count', -1) do
      delete arqueo_caja_url(@arqueo_caja)
    end

    assert_redirected_to arqueo_cajas_url
  end
end
