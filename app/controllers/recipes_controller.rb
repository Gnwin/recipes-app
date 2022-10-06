class RecipesController < ApplicationController
  def index
    @current_user = current_user
    @recipes = Recipe.where(user: current_user)
  end

  def show
    @current_user = current_user
    @recipe = Recipe.find(params[:recipe_id])
    @foods = Food.where(user: current_user)
  end

  def destroy
    @current_user = current_user
    recipe = Recipe.find(params[:recipe_id])
    recipe.destroy
    redirect_to(request.referer)
  end
end
