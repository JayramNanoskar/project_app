Rails.application.routes.draw do

  # post 'orders/show'
  resources :orders, only: [:index, :show]

  get 'order_lines/create'

  put 'order_lines/update'

  delete 'order_lines/destroy'

  get 'carts/show'
  delete 'carts/destroy'
  # resources :carts  
  resources :images
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end
