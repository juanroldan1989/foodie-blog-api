require 'test_helper'

module V1
  class RecipesControllerTest < ActionController::TestCase
    setup do
      @recipe = recipes(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:resources)
    end

    test "should create recipe" do
      assert_difference('Recipe.count') do
        post :create, recipe: { body: @recipe.body, title: @recipe.title, user_id: @recipe.user_id }
      end

      assert_response 201
    end

    test "should show recipe" do
      get :show, id: @recipe
      assert_response :success
    end

    test "should update recipe" do
      put :update, id: @recipe, recipe: { body: @recipe.body, title: @recipe.title, user_id: @recipe.user_id }
      assert_response 204
    end

    test "should destroy recipe" do
      assert_difference('Recipe.count', -1) do
        delete :destroy, id: @recipe
      end

      assert_response 204
    end
  end
end
