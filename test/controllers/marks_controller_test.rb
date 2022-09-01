require "test_helper"

class MarksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get marks_index_url
    assert_response :success
  end

  test "should get new" do
    get marks_new_url
    assert_response :success
  end

  test "should get create" do
    get marks_create_url
    assert_response :success
  end

  test "should get edit" do
    get marks_edit_url
    assert_response :success
  end

  test "should get update" do
    get marks_update_url
    assert_response :success
  end

  test "should get delete" do
    get marks_delete_url
    assert_response :success
  end
end
