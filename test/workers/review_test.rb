require "test_helper"
 
class ReviewTest < ActiveJob::TestCase
  test "that activity item is generated on create" do
    assert_enqueued_jobs(0)

    assert_difference("Post.count") do
      Review.create(user_id: 1, title: "Review's title", body: "This is my review...")
    end

    assert_enqueued_jobs(1)
  end

  test "that activity item is generated on update" do
    assert_enqueued_jobs(0)

    review = Review.last

    review.update_attributes(title: "This is a new title for my review")

    assert_enqueued_jobs(1)
  end

  test "that activity item is generated on delete" do
    assert_enqueued_jobs(0)

    assert_difference("Review.count") do
      review = Review.last
      review.destroy
    end

    assert_enqueued_jobs(1)
  end
end
