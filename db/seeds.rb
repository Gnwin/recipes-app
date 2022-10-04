# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'Tom')
second_user = User.create(name: 'Lilly')

Food.create(name: 'Apple', user: first_user, measurement_unit: 'kg', price: 1, quantity: 0.5)
Food.create(name: 'Butter', user: first_user, measurement_unit: 'kg', price: 5.5, quantity: 0.2)
Food.create(name: 'Milk', user: second_user, price: 0.90, measurement_unit: 'lt', quantity: 2)
Food.create(name: 'Flour', user: second_user, measurement_unit: 'kg', price: 0.5, quantity: 1.5)
Food.create(name: 'Banana', user: second_user, measurement_unit: 'kg', price: 1.40, quantity: 0)
Food.create(name: 'Coffee', user: first_user, measurement_unit: 'kg', price: 2.20, quantity: 0)
Food.create(name: 'Corn', user: first_user, measurement_unit: 'kg', price: 0.90, quantity: 0)
Food.create(name: 'Meat', user: first_user, measurement_unit: 'kg', price: 4.30, quantity: 0)
