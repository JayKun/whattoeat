Rails.application.routes.draw do

  devise_for :users
  get "home/index" => "home#index"
  get "recipe/show/:recipe_id" => "recipe#show"
  get "recipe/random" => "recipe#random"
  get "recipe/show_recipes/:ingredient_id" => "recipe#show_recipes"
  get "/home/aboutus" => "home#aboutus"
  post "recipe/random" => "recipe#random"
  post "recipe/create" => "recipe#create"
  
  root "home#index"
end
