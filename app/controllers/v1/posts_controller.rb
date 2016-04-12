module V1
  class PostsController < BaseController

    private

    def resource_params
      params.require(:post).permit(:user_id, :title, :body)
    end

    def resource_class
      Post
    end

    def resource_key
      "posts"
    end
  end
end
