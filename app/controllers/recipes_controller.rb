class RecipesController < ApplicationController
  def index
    @user = User.includes(:foods, :recipes).find(params[:user_id])
  end

  def show
    @user = current_user
    @food = Food.all
    @recipe = Recipe.find(params[:id])
    @recipe_foods = RecipeFood.includes(food: :user).where(recipe_id: @recipe.id)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(post_params)
    @recipe.user_id = current_user.id
    if @recipe.save
      redirect_to user_recipes_path
    else
      render :new
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.recipe_foods.destroy_all
    @recipe.destroy
    redirect_to user_recipes_path
  end

  def toggle
    @recipe = Recipe.find(params[:id])
    @recipe.update(public: !@recipe.public)
    redirect_back(fallback_location: root_path)
  end

  def post_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
