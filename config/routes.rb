Rails.application.routes.draw do
  resources :orders
  resources :line_items do
    get :decrement, on: :member
  end
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products do
    get :who_bought, on: :member
  end
end
