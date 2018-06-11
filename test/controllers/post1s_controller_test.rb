require 'test_helper'

class Post1sControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get post1s_new_url
    assert_response :success
  end

end
