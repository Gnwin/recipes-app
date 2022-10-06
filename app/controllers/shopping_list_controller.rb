class ShoppingListController < ApplicationController
  def index
    @current_user = current_user
    load_qs
    Food.where(user: current_user).each do |food|
      @qs[food.id] -= food.quantity unless @qs[food.id].nil?
    end
    @food_count = 0
    @total_price = 0
    @price = {}
    @qs.each do |key, q|
      next unless q.positive?

      @price[key] = q * Food.find(key).price
      @food_count += 1
      @total_price += @price[key]
    end
  end

  def load_qs
    @qs = {}
    RecipeFood.all.includes(recipe: { user: [] }).each do |rf|
      if rf.recipe.user == current_user
        @qs[rf.food_id] = 0 if @qs[rf.food_id].nil?
        @qs[rf.food_id] += rf.quantity
      end
    end
  end
end
