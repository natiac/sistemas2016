require 'test_helper'

class FormasPagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forma_pago = formas_pagos(:one)
  end

  test "should get index" do
    get formas_pagos_url
    assert_response :success
  end

  test "should get new" do
    get new_forma_pago_url
    assert_response :success
  end

  test "should create forma_pago" do
    assert_difference('FormasPago.count') do
      post formas_pagos_url, params: { forma_pago: { efectivo: @forma_pago.efectivo } }
    end

    assert_redirected_to forma_pago_url(FormasPago.last)
  end

  test "should show forma_pago" do
    get forma_pago_url(@forma_pago)
    assert_response :success
  end

  test "should get edit" do
    get edit_forma_pago_url(@forma_pago)
    assert_response :success
  end

  test "should update forma_pago" do
    patch forma_pago_url(@forma_pago), params: { forma_pago: { efectivo: @forma_pago.efectivo } }
    assert_redirected_to forma_pago_url(@forma_pago)
  end

  test "should destroy forma_pago" do
    assert_difference('FormasPago.count', -1) do
      delete forma_pago_url(@forma_pago)
    end

    assert_redirected_to formas_pagos_url
  end
end
