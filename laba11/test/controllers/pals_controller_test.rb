require 'test_helper'

class PalsControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get pals_input_url
    assert_response :success
  end

  test "should get output" do
    get pals_output_url
    assert_response :success
  end
end
