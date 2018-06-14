Rails.application.routes.draw do
  get 'order_lines/create'

  get 'order_lines/update'

  get 'order_lines/destroy'

  get 'carts/show'

  # resources :carts  
  resources :images
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end
