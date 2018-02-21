require 'test_helper'

class DojosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dojos_index_url
    assert_response :success
  end

  test "should get new" do
    get dojos_new_url
    assert_response :success
  end

end
