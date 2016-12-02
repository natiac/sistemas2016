require 'test_helper'

class OrdenesConsumosDetallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordenes_consumos_detalle = ordenes_consumos_detalles(:one)
  end

  test "should get index" do
    get ordenes_consumos_detalles_url
    assert_response :success
  end

  test "should get new" do
    get new_ordenes_consumos_detalle_url
    assert_response :success
  end

  test "should create ordenes_consumos_detalle" do
    assert_difference('OrdenesConsumosDetalle.count') do
      post ordenes_consumos_detalles_url, params: { ordenes_consumos_detalle: { IVA: @ordenes_consumos_detalle.IVA, monto: @ordenes_consumos_detalle.monto } }
    end

    assert_redirected_to ordenes_consumos_detalle_url(OrdenesConsumosDetalle.last)
  end

  test "should show ordenes_consumos_detalle" do
    get ordenes_consumos_detalle_url(@ordenes_consumos_detalle)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordenes_consumos_detalle_url(@ordenes_consumos_detalle)
    assert_response :success
  end

  test "should update ordenes_consumos_detalle" do
    patch ordenes_consumos_detalle_url(@ordenes_consumos_detalle), params: { ordenes_consumos_detalle: { IVA: @ordenes_consumos_detalle.IVA, monto: @ordenes_consumos_detalle.monto } }
    assert_redirected_to ordenes_consumos_detalle_url(@ordenes_consumos_detalle)
  end

  test "should destroy ordenes_consumos_detalle" do
    assert_difference('OrdenesConsumosDetalle.count', -1) do
      delete ordenes_consumos_detalle_url(@ordenes_consumos_detalle)
    end

    assert_redirected_to ordenes_consumos_detalles_url
  end
end
