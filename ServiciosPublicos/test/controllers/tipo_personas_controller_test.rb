require 'test_helper'

class TipoPersonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_persona = tipos_personas(:one)
  end

  test "should get index" do
    get tipos_personas_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_persona_url
    assert_response :success
  end

  test "should create tipo_persona" do
    assert_difference('TipoPersona.count') do
      post tipos_personas_url, params: { tipo_persona: { tipo: @tipo_persona.tipo } }
    end

    assert_redirected_to tipo_persona_url(TipoPersona.last)
  end

  test "should show tipo_persona" do
    get tipo_persona_url(@tipo_persona)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_persona_url(@tipo_persona)
    assert_response :success
  end

  test "should update tipo_persona" do
    patch tipo_persona_url(@tipo_persona), params: { tipo_persona: { tipo: @tipo_persona.tipo } }
    assert_redirected_to tipo_persona_url(@tipo_persona)
  end

  test "should destroy tipo_persona" do
    assert_difference('TipoPersona.count', -1) do
      delete tipo_persona_url(@tipo_persona)
    end

    assert_redirected_to tipos_personas_url
  end
end
