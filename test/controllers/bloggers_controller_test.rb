require 'test_helper'

class BloggersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bloggers_index_url
    assert_response :success
  end

  test "should get show" do
    get bloggers_show_url
    assert_response :success
  end

end
