require 'test_helper'

class ConexionesDeUsuarioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conexiones_de_usuario_index_url
    assert_response :success
  end

end
