Rails.application.routes.draw do
  resources :carts
  get 'catalog/index'
  resources :products
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "catalog#index"
end
