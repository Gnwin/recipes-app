require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  subject { RecipeFood.new(quantity: 5, food: Food.first, recipe: Recipe.last) }

  it 'a new recipe_food is valid' do
    expect(subject).to be_valid
  end

  it 'a new recipe_food with non-numerical quantity is not valid' do
    new_recipe_food = RecipeFood.new(quantity: 'no', food: Food.first, recipe: Recipe.last)
    expect(new_recipe_food).to_not be_valid
  end
end
