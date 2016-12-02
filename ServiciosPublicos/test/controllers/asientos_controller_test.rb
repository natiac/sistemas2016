require 'test_helper'

class AsientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asiento = asientos(:one)
  end

  test "should get index" do
    get asientos_url
    assert_response :success
  end

  test "should get new" do
    get new_asiento_url
    assert_response :success
  end

  test "should create asiento" do
    assert_difference('Asiento.count') do
      post asientos_url, params: { asiento: { debe: @asiento.debe, fecha: @asiento.fecha, haber: @asiento.haber, numero: @asiento.numero } }
    end

    assert_redirected_to asiento_url(Asiento.last)
  end

  test "should show asiento" do
    get asiento_url(@asiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_asiento_url(@asiento)
    assert_response :success
  end

  test "should update asiento" do
    patch asiento_url(@asiento), params: { asiento: { debe: @asiento.debe, fecha: @asiento.fecha, haber: @asiento.haber, numero: @asiento.numero } }
    assert_redirected_to asiento_url(@asiento)
  end

  test "should destroy asiento" do
    assert_difference('Asiento.count', -1) do
      delete asiento_url(@asiento)
    end

    assert_redirected_to asientos_url
  end
end
