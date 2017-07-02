Rails.application.routes.draw do
  scope '/:locale', locale: /#{I18n.available_locales.join('|')}/ do
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
  end
  root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_root
  get "/*path", to: redirect("/#{I18n.default_locale}/%{path}", status: 302), constraints: {path: /(?!(#{I18n.available_locales.join("|")})\/).*/}, format: false


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
