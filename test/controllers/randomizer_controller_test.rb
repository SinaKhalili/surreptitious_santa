require 'test_helper'

class RandomizerControllerTest < ActionDispatch::IntegrationTest
  test "should get randomize" do
    get randomizer_randomize_url
    assert_response :success
  end

end
