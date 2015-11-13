require 'test_helper'

class ActivityItemsControllerTest < ActionController::TestCase
  setup do
    @activity_item = activity_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_items)
  end
end
