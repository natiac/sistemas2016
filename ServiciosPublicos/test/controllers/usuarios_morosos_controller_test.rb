require 'test_helper'

class UsuariosMorososControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuarios_morosos_index_url
    assert_response :success
  end

end
