class RecipesController < ApplicationController
  def index
    @current_user = current_user
    @recipes = Recipe.where(user: current_user)
  end

  def new
    @current_user = current_user
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      flash[:notice] = 'Recipe saved successfully'
    else
      flash[:alert] = 'Recipe not saved'
    end
    redirect_to recipes_path
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

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :cooking_time, :preparation_time, :public)
  end
end
