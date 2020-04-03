require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get pay" do
    get items_pay_url
    assert_response :success
  end

end
