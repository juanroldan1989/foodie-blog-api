module V1
  class ReviewsController < BaseController

    private

    def resource_params
      params.require(:review).permit(:user_id, :title, :body)
    end

    def resource_class
      Review
    end

    def resource_key
      "reviews"
    end
  end
end
