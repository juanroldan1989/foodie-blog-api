module V1
  class RecipesController < BaseController

    private

    def resource_params
      params.require(:recipe).permit(:user_id, :title, :body)
    end

    def resource_class
      Recipe
    end

    def resource_key
      "recipes"
    end
  end
end
