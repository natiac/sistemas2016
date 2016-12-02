require 'test_helper'

class PagosDeUsuarioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pagos_de_usuario_index_url
    assert_response :success
  end

end
