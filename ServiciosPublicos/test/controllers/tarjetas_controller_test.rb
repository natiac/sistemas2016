require 'test_helper'

class TarjetasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarjeta = tarjetas(:one)
  end

  test "should get index" do
    get tarjetas_url
    assert_response :success
  end

  test "should get new" do
    get new_tarjeta_url
    assert_response :success
  end

  test "should create tarjeta" do
    assert_difference('Tarjeta.count') do
      post tarjetas_url, params: { tarjeta: { categoria_tarjeta: @tarjeta.categoria_tarjeta, nro_verificacion: @tarjeta.nro_verificacion, tipo_tarjeta: @tarjeta.tipo_tarjeta, titular: @tarjeta.titular } }
    end

    assert_redirected_to tarjeta_url(Tarjeta.last)
  end

  test "should show tarjeta" do
    get tarjeta_url(@tarjeta)
    assert_response :success
  end

  test "should get edit" do
    get edit_tarjeta_url(@tarjeta)
    assert_response :success
  end

  test "should update tarjeta" do
    patch tarjeta_url(@tarjeta), params: { tarjeta: { categoria_tarjeta: @tarjeta.categoria_tarjeta, nro_verificacion: @tarjeta.nro_verificacion, tipo_tarjeta: @tarjeta.tipo_tarjeta, titular: @tarjeta.titular } }
    assert_redirected_to tarjeta_url(@tarjeta)
  end

  test "should destroy tarjeta" do
    assert_difference('Tarjeta.count', -1) do
      delete tarjeta_url(@tarjeta)
    end

    assert_redirected_to tarjetas_url
  end
end
