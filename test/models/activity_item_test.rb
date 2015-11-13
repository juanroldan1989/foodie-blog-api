require 'test_helper'

class ActivityItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should retrieve latest 20 items" do
    items   = activity_items.last(20)

    item_21 = activity_items(:item_21)

    assert_not_includes items, item_21
  end
end
