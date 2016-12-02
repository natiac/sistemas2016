require 'test_helper'

class TipoDeServicioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tipo_de_servicio_index_url
    assert_response :success
  end

end
