class PublicRecipesController < ApplicationController
  def index
    @current_user = current_user
    @recipes = Recipe.where(public: true)
    @food_count = {}
    @price = {}
    RecipeFood.all.includes(%i[recipe food]).each do |rf|
      next unless rf.recipe.public == true

      @food_count[rf.recipe_id] = 0 if @food_count[rf.recipe_id].nil?
      @food_count[rf.recipe_id] += 1
      @price[rf.recipe_id] = 0 if @price[rf.recipe_id].nil?
      @price[rf.recipe_id] += rf.quantity * rf.food.price
    end
  end
end
