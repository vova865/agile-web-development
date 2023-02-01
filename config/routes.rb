Rails.application.routes.draw do
  get 'admin', to: 'admin#index'
  controller :sessions do
    get 'login', action: 'new'
    post 'login', action: 'create'
    delete 'logout', action: 'destroy'
  end
  resources :users
  resources :products do
    get :who_bought, on: :member
  end
  scope '(:locale)' do
    resources :orders
    resources :line_items do
      get :decrement, on: :member
    end
    resources :carts
    root 'store#index', as: 'store_index', via: :all
  end
end
