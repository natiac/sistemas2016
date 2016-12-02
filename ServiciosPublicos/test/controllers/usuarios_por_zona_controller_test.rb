require 'test_helper'

class UsuariosPorZonaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuarios_por_zona_index_url
    assert_response :success
  end

end
