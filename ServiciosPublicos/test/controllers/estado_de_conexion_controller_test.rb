require 'test_helper'

class EstadoDeConexionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get estado_de_conexion_index_url
    assert_response :success
  end

end
