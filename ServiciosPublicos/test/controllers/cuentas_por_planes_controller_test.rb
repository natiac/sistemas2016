require 'test_helper'

class CuentasPorPlanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuentas_por_plan = cuentas_por_planes(:one)
  end

  test "should get index" do
    get cuentas_por_planes_url
    assert_response :success
  end

  test "should get new" do
    get new_cuentas_por_plan_url
    assert_response :success
  end

  test "should create cuentas_por_plan" do
    assert_difference('CuentasPorPlan.count') do
      post cuentas_por_planes_url, params: { cuentas_por_plan: { descripcion: @cuentas_por_plan.descripcion } }
    end

    assert_redirected_to cuentas_por_plan_url(CuentasPorPlan.last)
  end

  test "should show cuentas_por_plan" do
    get cuentas_por_plan_url(@cuentas_por_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuentas_por_plan_url(@cuentas_por_plan)
    assert_response :success
  end

  test "should update cuentas_por_plan" do
    patch cuentas_por_plan_url(@cuentas_por_plan), params: { cuentas_por_plan: { descripcion: @cuentas_por_plan.descripcion } }
    assert_redirected_to cuentas_por_plan_url(@cuentas_por_plan)
  end

  test "should destroy cuentas_por_plan" do
    assert_difference('CuentasPorPlan.count', -1) do
      delete cuentas_por_plan_url(@cuentas_por_plan)
    end

    assert_redirected_to cuentas_por_planes_url
  end
end
