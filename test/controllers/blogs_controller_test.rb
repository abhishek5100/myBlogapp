require "test_helper"

class BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index~" do
    get blogs_index~_url
    assert_response :success
  end
end
