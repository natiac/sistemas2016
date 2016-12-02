require 'test_helper'

class ValoresDePagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valores_de_pago = valores_de_pagos(:one)
  end

  test "should get index" do
    get valores_de_pagos_url
    assert_response :success
  end

  test "should get new" do
    get new_valores_de_pago_url
    assert_response :success
  end

  test "should create valores_de_pago" do
    assert_difference('ValoresDePago.count') do
      post valores_de_pagos_url, params: { valores_de_pago: { monto_por_forma_pago: @valores_de_pago.monto_por_forma_pago } }
    end

    assert_redirected_to valores_de_pago_url(ValoresDePago.last)
  end

  test "should show valores_de_pago" do
    get valores_de_pago_url(@valores_de_pago)
    assert_response :success
  end

  test "should get edit" do
    get edit_valores_de_pago_url(@valores_de_pago)
    assert_response :success
  end

  test "should update valores_de_pago" do
    patch valores_de_pago_url(@valores_de_pago), params: { valores_de_pago: { monto_por_forma_pago: @valores_de_pago.monto_por_forma_pago } }
    assert_redirected_to valores_de_pago_url(@valores_de_pago)
  end

  test "should destroy valores_de_pago" do
    assert_difference('ValoresDePago.count', -1) do
      delete valores_de_pago_url(@valores_de_pago)
    end

    assert_redirected_to valores_de_pagos_url
  end
end
