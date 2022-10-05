require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject do
    Recipe.new(name: 'Apple Pie', user: User.first, preparation_time: 60, cooking_time: 30,
               description: 'Put Apples and mix them up, cook them for 30 minutes', public: true)
  end

  it 'a new recipe_food is valid' do
    expect(subject).to be_valid
  end

  it 'a new food with non-numerical preparation time is not valid' do
    new_recipe = Recipe.new(name: 'Apple Pie', user: User.first, preparation_time: 'yes', cooking_time: 30,
                            description: 'Put Apples and mix them up, cook them for 30 minutes', public: true)
    expect(new_recipe).to_not be_valid
  end
end
