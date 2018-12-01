require 'test_helper'

class ProductitemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get productitems_index_url
    assert_response :success
  end

  test "should get show" do
    get productitems_show_url
    assert_response :success
  end

  test "should get edit" do
    get productitems_edit_url
    assert_response :success
  end

end
