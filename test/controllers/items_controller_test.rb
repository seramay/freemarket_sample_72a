require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get items_new_url

  test "should get pay" do
    get items_pay_url
    assert_response :success
  end

  # test "the truth" do
  #   assert true
  # end

end
