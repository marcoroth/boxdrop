require 'test_helper'

class FolderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get folder_index_url
    assert_response :success
  end

  test "should get show" do
    get folder_show_url
    assert_response :success
  end

end
