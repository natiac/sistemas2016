require 'test_helper'

class TpersonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tpersona = tpersonas(:one)
  end

  test "should get index" do
    get tpersonas_url
    assert_response :success
  end

  test "should get new" do
    get new_tpersona_url
    assert_response :success
  end

  test "should create tpersona" do
    assert_difference('Tpersona.count') do
      post tpersonas_url, params: { tpersona: { tipo: @tpersona.tipo } }
    end

    assert_redirected_to tpersona_url(Tpersona.last)
  end

  test "should show tpersona" do
    get tpersona_url(@tpersona)
    assert_response :success
  end

  test "should get edit" do
    get edit_tpersona_url(@tpersona)
    assert_response :success
  end

  test "should update tpersona" do
    patch tpersona_url(@tpersona), params: { tpersona: { tipo: @tpersona.tipo } }
    assert_redirected_to tpersona_url(@tpersona)
  end

  test "should destroy tpersona" do
    assert_difference('Tpersona.count', -1) do
      delete tpersona_url(@tpersona)
    end

    assert_redirected_to tpersonas_url
  end
end
