module V1
  class PostsController < BaseController

    def index
      @posts = Post.all

      render json: { posts: @posts }
    end

    private

    def resource_params
      params.require(:post).permit(:user_id, :title, :body)
    end

    def resource_class
      Post
    end
  end
end
