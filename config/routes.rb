Rails.application.routes.draw do
  resources :discounts
  resources :brands
  devise_for :users
  resources :extra_specs
  resources :pictures
  resources :products
  resources :subcategories
  resources :categories
  root to: "home#index"
  resources :admin
  get 'contact', to: "home#contact"
  get 'show', to: "home#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
