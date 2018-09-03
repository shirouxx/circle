require 'test_helper'

class BukatusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bukatus_index_url
    assert_response :success
  end

  test "should get show" do
    get bukatus_show_url
    assert_response :success
  end

end
