require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get splashscreen' do
    get pages_splashscreen_url
    assert_response :success
  end
end
