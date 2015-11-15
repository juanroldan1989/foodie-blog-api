require "test_helper"
 
class RecipeTest < ActiveJob::TestCase
  test "that activity item is generated on create" do
    assert_enqueued_jobs(0)

    assert_difference("Post.count") do
      Recipe.create(user_id: 1, title: "First recipe", body: "All the ingredients you'll need are...")
    end

    assert_enqueued_jobs(1)
  end

  test "that activity item is generated on update" do
    assert_enqueued_jobs(0)

    recipe = Recipe.last

    recipe.update_attributes(title: "This is a new title for my recipe")

    assert_enqueued_jobs(1)
  end

  test "that activity item is generated on delete" do
    assert_enqueued_jobs(0)

    assert_difference("Recipe.count") do
      recipe = Recipe.last
      recipe.destroy
    end

    assert_enqueued_jobs(1)
  end
end
