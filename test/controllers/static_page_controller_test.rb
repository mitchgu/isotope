require 'test_helper'

class StaticPageControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get static_page_show_url
    assert_response :success
  end

end
