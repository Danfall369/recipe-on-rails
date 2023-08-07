class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.where(public: true)
      .includes(:user, :recipe_foods)
      .order(created_at: :desc)
      .left_joins(:recipe_foods)
      .group('recipes.id')
      .select('recipes.*, COUNT(recipe_foods.id) AS recipe_foods_count')
  end
end
