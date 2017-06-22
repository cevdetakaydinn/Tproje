Rails.application.routes.draw do
  devise_for :users
  resources :extra_specs
  resources :pictures
  resources :products
  resources :subcategories
  resources :categories
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end