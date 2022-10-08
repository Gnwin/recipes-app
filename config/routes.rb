


Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'foods#index'

  get '/recipes', to: 'recipes#index'
  get '/recipes/new', to: 'recipes#new', as: 'new_recipe'
  post 'recipes', to: 'recipes#create', as: 'create_recipe'
  get '/recipes/:recipe_id', to: 'recipes#show', as: 'show_recipe'

  get '/foods', to: 'foods#index'
  get '/foods/new', to: 'foods#new', as: 'new_food'
  post '/foods', to: 'foods#create', as: 'create_food'
  delete 'foods/:food_id', to: 'foods#destroy', as: 'destroy_food'

  get '/recipes/:recipe_id/recipe_foods/new', to: 'recipe_foods#new', as: 'new_recipe_food'
  post '/recipe_foods', to: 'recipe_foods#create', as: 'create_recipe_food'
  get '/recipes/:recipe_id/recipe_foods/edit/:recipe_food_id', to: 'recipe_foods#edit', as: 'edit_recipe_food'
  patch '/recipe_foods', to: 'recipe_foods#update', as: 'update_recipe_food'
  

  delete 'recipes/:recipe_id', to: 'recipes#destroy', as: 'destroy_recipe'
  delete 'recipe_foods/:recipe_foods_id', to: 'recipe_foods#destroy', as: 'destroy_recipe_food'

  get '/public_recipes', to: 'public_recipes#index'
  get '/shopping_list', to: 'shopping_list#index'
end