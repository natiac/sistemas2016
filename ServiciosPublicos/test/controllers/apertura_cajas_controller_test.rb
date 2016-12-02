require 'test_helper'

class AperturaCajasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apertura_caja = apertura_cajas(:one)
  end

  test "should get index" do
    get apertura_cajas_url
    assert_response :success
  end

  test "should get new" do
    get new_apertura_caja_url
    assert_response :success
  end

  test "should create apertura_caja" do
    assert_difference('apertura_caja.count') do
      post apertura_cajas_url, params: { apertura_caja: { hora_apertura: @apertura_caja.hora_apertura, hora_cierre: @apertura_caja.hora_cierre, monto_apertura: @apertura_caja.monto_apertura, monto_cierre: @apertura_caja.monto_cierre } }
    end

    assert_redirected_to apertura_caja_url(AperturaCaja.last)
  end

  test "should show apertura_caja" do
    get apertura_caja_url(@apertura_caja)
    assert_response :success
  end

  test "should get edit" do
    get edit_apertura_caja_url(@apertura_caja)
    assert_response :success
  end

  test "should update apertura_caja" do
    patch apertura_caja_url(@apertura_caja), params: { apertura_caja: { hora_apertura: @apertura_caja.hora_apertura, hora_cierre: @apertura_caja.hora_cierre, monto_apertura: @apertura_caja.monto_apertura, monto_cierre: @apertura_caja.monto_cierre } }
    assert_redirected_to apertura_caja_url(@apertura_caja)
  end

  test "should destroy apertura_caja" do
    assert_difference('apertura_caja.count', -1) do
      delete apertura_caja_url(@apertura_caja)
    end

    assert_redirected_to apertura_cajas_url
  end
end
