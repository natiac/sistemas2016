require 'test_helper'

class IngresoPorCajaPorRangoDeFechaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ingreso_por_caja_por_rango_de_fecha_index_url
    assert_response :success
  end

end
