require "test_helper"
 
class ActivityItemWorkerTest < ActiveJob::TestCase
  test "that activity item is generated" do
    assert_enqueued_jobs(0)

    assert_difference("ActivityItem.count") do
      ActivityItemWorker.new("create", 1, "post", "First post", 22).perform

      assert_enqueued_jobs(1)
    end
  end
end
