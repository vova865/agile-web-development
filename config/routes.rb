Rails.application.routes.draw do
  resources :orders
  resources :line_items do
    member do
      get :decrement
    end
  end
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
