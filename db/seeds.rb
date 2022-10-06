# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# first_user = User.create(name: 'Tom')
# second_user = User.create(name: 'Lilly')

# apple = Food.create(name: 'Apple', user: first_user, measurement_unit: 'kg', price: 1, quantity: 0.5)
# butter = Food.create(name: 'Butter', user: first_user, measurement_unit: 'kg', price: 5.5, quantity: 0.2)
# milk = Food.create(name: 'Milk', user: first_user, price: 0.90, measurement_unit: 'lt', quantity: 2)
# flour = Food.create(name: 'Flour', user: first_user, measurement_unit: 'kg', price: 0.5, quantity: 1.5)
# Food.create(name: 'Banana', user: second_user, measurement_unit: 'kg', price: 1.40, quantity: 0)
# Food.create(name: 'Coffee', user: first_user, measurement_unit: 'kg', price: 2.20, quantity: 0)
# Food.create(name: 'Corn', user: first_user, measurement_unit: 'kg', price: 0.90, quantity: 0)
# Food.create(name: 'Meat', user: first_user, measurement_unit: 'kg', price: 4.30, quantity: 0)
# lemon_juice = Food.create(name: 'Lemon juice', user: first_user, measurement_unit: 'lt', price: 1.60, quantity: 0.9)
# cocoa_mix = Food.create(name: 'Cocoa mix', user: first_user, measurement_unit: 'kg', price: 2, quantity: 0.8)
# sugar = Food.create(name: 'Sugar', user: first_user, measurement_unit: 'kg', price: 0.8, quantity: 2)
# bread = Food.create(name: 'Bread', user: second_user, measurement_unit: 'kg', price: 0.5, quantity: 0.75)

# first_recipe = Recipe.create(name: 'Apple Pie', user: first_user, preparation_time: 60, cooking_time: 30, description: 'Put Apples and mix them up, cook them for 30 minutes', public: true)
# RecipeFood.create(recipe: first_recipe, food: apple, quantity: 1)
# second_recipe = Recipe.create(name: 'Milk Shake', user: first_user, preparation_time: 5, cooking_time: 0, description: 'Put milk and cocoa mix, then shake it', public: true)
# RecipeFood.create(recipe: second_recipe, food: cocoa_mix, quantity: 0.01)
# RecipeFood.create(recipe: second_recipe, food: milk, quantity: 0.3)
# third_recipe = Recipe.create(name: 'Lemon Flour', user: second_user, preparation_time: 5, cooking_time: 5,
#                              description: 'Put Lemon juice and flour and mix them up, cook it for 5 minutes in the microwave oven', public: true)
# RecipeFood.create(recipe: third_recipe, food: lemon_juice, quantity: 0.5)
# RecipeFood.create(recipe: third_recipe, food: flour, quantity: 0.1)
# fourth_recipe = Recipe.create(name: 'Bread Butter Sugar', user: first_user, preparation_time: 5, cooking_time: 0, description: 'Spread the butter over the bread, then add sugar on it', public: false)
# RecipeFood.create(recipe: fourth_recipe, food: bread, quantity: 0.1)
# RecipeFood.create(recipe: fourth_recipe, food: butter, quantity: 0.01)
# RecipeFood.create(recipe: fourth_recipe, food: sugar, quantity: 0.01)
