Rails.application.routes.draw do
  resources :line_items do
    member do
      patch 'decrement_quantity', as: :decrement_quantity
    end
  end
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
