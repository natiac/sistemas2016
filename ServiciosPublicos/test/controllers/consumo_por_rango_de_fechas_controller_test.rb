require 'test_helper'

class ConsumoPorRangoDeFechasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consumo_por_rango_de_fechas_index_url
    assert_response :success
  end

end
