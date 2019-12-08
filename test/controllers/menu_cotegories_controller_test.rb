require 'test_helper'

class MenuCotegoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get menu_cotegories_index_url
    assert_response :success
  end

end
