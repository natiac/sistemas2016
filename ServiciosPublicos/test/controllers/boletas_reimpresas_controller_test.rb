require 'test_helper'

class BoletasReimpresasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boletas_reimpresas_index_url
    assert_response :success
  end

end
