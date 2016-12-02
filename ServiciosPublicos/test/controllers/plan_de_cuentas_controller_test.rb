require 'test_helper'

class PlanDeCuentasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_de_cuenta = plan_de_cuentas(:one)
  end

  test "should get index" do
    get plan_de_cuentas_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_de_cuenta_url
    assert_response :success
  end

  test "should create plan_de_cuenta" do
    assert_difference('PlanDeCuenta.count') do
      post plan_de_cuentas_url, params: { plan_de_cuenta: { estado: @plan_de_cuenta.estado, version: @plan_de_cuenta.version } }
    end

    assert_redirected_to plan_de_cuenta_url(PlanDeCuenta.last)
  end

  test "should show plan_de_cuenta" do
    get plan_de_cuenta_url(@plan_de_cuenta)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_de_cuenta_url(@plan_de_cuenta)
    assert_response :success
  end

  test "should update plan_de_cuenta" do
    patch plan_de_cuenta_url(@plan_de_cuenta), params: { plan_de_cuenta: { estado: @plan_de_cuenta.estado, version: @plan_de_cuenta.version } }
    assert_redirected_to plan_de_cuenta_url(@plan_de_cuenta)
  end

  test "should destroy plan_de_cuenta" do
    assert_difference('PlanDeCuenta.count', -1) do
      delete plan_de_cuenta_url(@plan_de_cuenta)
    end

    assert_redirected_to plan_de_cuentas_url
  end
end
