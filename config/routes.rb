Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'

  get '/recipes', to: 'recipes#index'
  get '/recipes/new', to: 'recipes#new'
  get '/recipes/:recipe_id', to: 'recipes#show'
  post 'recipes', to: 'recipes#create', as: 'create_recipe'
  delete 'recipes/:recipe_id', to: 'recipes#destroy', as: 'destroy_recipe'

  get '/public_recipes', to: 'public_recipes#index'
  get '/shopping_list', to: 'shopping_list#index'

  get '/foods', to: 'foods#index'
  get '/foods/new', to: 'foods#new', as: 'new_food'
  post '/foods', to: 'foods#create', as: 'create_food'
  delete 'foods/:food_id', to: 'foods#destroy', as: 'destroy_food'
end
