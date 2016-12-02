require 'test_helper'

class OrdenesDeConsumosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordenes_de_consumo = ordenes_de_consumos(:one)
  end

  test "should get index" do
    get ordenes_de_consumos_url
    assert_response :success
  end

  test "should get new" do
    get new_ordenes_de_consumo_url
    assert_response :success
  end

  test "should create ordenes_de_consumo" do
    assert_difference('OrdenesDeConsumo.count') do
      post ordenes_de_consumos_url, params: { ordenes_de_consumo: { IVA: @ordenes_de_consumo.IVA, fecha_expedicion: @ordenes_de_consumo.fecha_expedicion, fecha_vencimiento: @ordenes_de_consumo.fecha_vencimiento, total_a_pagar: @ordenes_de_consumo.total_a_pagar } }
    end

    assert_redirected_to ordenes_de_consumo_url(OrdenesDeConsumo.last)
  end

  test "should show ordenes_de_consumo" do
    get ordenes_de_consumo_url(@ordenes_de_consumo)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordenes_de_consumo_url(@ordenes_de_consumo)
    assert_response :success
  end

  test "should update ordenes_de_consumo" do
    patch ordenes_de_consumo_url(@ordenes_de_consumo), params: { ordenes_de_consumo: { IVA: @ordenes_de_consumo.IVA, fecha_expedicion: @ordenes_de_consumo.fecha_expedicion, fecha_vencimiento: @ordenes_de_consumo.fecha_vencimiento, total_a_pagar: @ordenes_de_consumo.total_a_pagar } }
    assert_redirected_to ordenes_de_consumo_url(@ordenes_de_consumo)
  end

  test "should destroy ordenes_de_consumo" do
    assert_difference('OrdenesDeConsumo.count', -1) do
      delete ordenes_de_consumo_url(@ordenes_de_consumo)
    end

    assert_redirected_to ordenes_de_consumos_url
  end
end
