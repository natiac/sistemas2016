require 'test_helper'

class PlanDeCuentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_de_cuentum = plan_de_cuenta(:one)
  end

  test "should get index" do
    get plan_de_cuenta_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_de_cuentum_url
    assert_response :success
  end

  test "should create plan_de_cuentum" do
    assert_difference('PlanDeCuentum.count') do
      post plan_de_cuenta_url, params: { plan_de_cuentum: { estado: @plan_de_cuentum.estado, version: @plan_de_cuentum.version } }
    end

    assert_redirected_to plan_de_cuentum_url(PlanDeCuentum.last)
  end

  test "should show plan_de_cuentum" do
    get plan_de_cuentum_url(@plan_de_cuentum)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_de_cuentum_url(@plan_de_cuentum)
    assert_response :success
  end

  test "should update plan_de_cuentum" do
    patch plan_de_cuentum_url(@plan_de_cuentum), params: { plan_de_cuentum: { estado: @plan_de_cuentum.estado, version: @plan_de_cuentum.version } }
    assert_redirected_to plan_de_cuentum_url(@plan_de_cuentum)
  end

  test "should destroy plan_de_cuentum" do
    assert_difference('PlanDeCuentum.count', -1) do
      delete plan_de_cuentum_url(@plan_de_cuentum)
    end

    assert_redirected_to plan_de_cuenta_url
  end
end
