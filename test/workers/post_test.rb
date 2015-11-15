require "test_helper"
 
class PostTest < ActiveJob::TestCase
  test "that activity item is generated on create" do
    assert_enqueued_jobs(0)

    assert_difference("Post.count") do
      Post.create(user_id: 1, title: "First post", body: "Great content for post...")
    end

    assert_enqueued_jobs(1)
  end

  test "that activity item is generated on update" do
    assert_enqueued_jobs(0)

    post = Post.last

    post.update_attributes(title: "This is a new title for my post")

    assert_enqueued_jobs(1)
  end

  test "that activity item is generated on delete" do
    assert_enqueued_jobs(0)

    assert_difference("Post.count") do
      post = Post.last
      post.destroy
    end

    assert_enqueued_jobs(1)
  end
end
