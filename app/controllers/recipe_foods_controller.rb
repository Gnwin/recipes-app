require 'pry'

class RecipeFoodsController < ApplicationController
  def new
    @current_user = current_user
    @recipe_food = RecipeFood.new
    @foods = Food.where(user: current_user)
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @foods = Food.where(user: current_user)
    @recipe_food = RecipeFood.new(recipe_food_params)
    @recipe_food.recipe = @recipe

    if @recipe_food.save
      flash[:notice] = 'Recipe Food saved successfully'
    else
      flash[:alert] = 'Recipe Food not saved'
    end
    redirect_to recipes_path
  end

  def edit
    p params
    @recipe_food = RecipeFood.find(params[:recipe_food_id])
    @foods = Food.where(user: current_user)
  end

  def update
    @recipe_food.quantity = recipe_food_params[:quantity]

    if @recipe_food.update(recipe_food_params)
      flash[:notice] = 'Recipe Food updated successfully'
    else
      flash[:alert] = 'Recipe Food not updated'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    p params
    @current_user = current_user
    recipe_food = RecipeFood.find(params[:recipe_foods_id])
    recipe_food.destroy
    redirect_to(request.referer)
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity, :food_id)
  end
end
