Rails.application.routes.draw do
  get 'admin', to: 'admin#index'
  controller :sessions do
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
  end
  resources :users
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
