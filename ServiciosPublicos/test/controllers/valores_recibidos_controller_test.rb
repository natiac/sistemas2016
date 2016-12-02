require 'test_helper'

class ValoresRecibidosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get valores_recibidos_index_url
    assert_response :success
  end

end
