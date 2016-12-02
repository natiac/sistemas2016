require 'test_helper'

class FacturasDetallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facturas_detalle = facturas_detalles(:one)
  end

  test "should get index" do
    get facturas_detalles_url
    assert_response :success
  end

  test "should get new" do
    get new_facturas_detalle_url
    assert_response :success
  end

  test "should create facturas_detalle" do
    assert_difference('FacturasDetalle.count') do
      post facturas_detalles_url, params: { facturas_detalle: { IVA: @facturas_detalle.IVA, monto: @facturas_detalle.monto } }
    end

    assert_redirected_to facturas_detalle_url(FacturasDetalle.last)
  end

  test "should show facturas_detalle" do
    get facturas_detalle_url(@facturas_detalle)
    assert_response :success
  end

  test "should get edit" do
    get edit_facturas_detalle_url(@facturas_detalle)
    assert_response :success
  end

  test "should update facturas_detalle" do
    patch facturas_detalle_url(@facturas_detalle), params: { facturas_detalle: { IVA: @facturas_detalle.IVA, monto: @facturas_detalle.monto } }
    assert_redirected_to facturas_detalle_url(@facturas_detalle)
  end

  test "should destroy facturas_detalle" do
    assert_difference('FacturasDetalle.count', -1) do
      delete facturas_detalle_url(@facturas_detalle)
    end

    assert_redirected_to facturas_detalles_url
  end
end
