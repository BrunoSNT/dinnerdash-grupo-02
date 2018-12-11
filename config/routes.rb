Rails.application.routes.draw do
  root to: 'homes#index'
  resources :pedidos
  resources :order_meals
  resources :orders
  resources :situations
  resources :meals
  resources :categories
  
  put '/delete', to: 'carts#delete_item', as: 'delete'
  put '/add', to: 'carts#add_item', as: 'add'
  
  devise_for :users


  put '/remove', to: 'cart#remove_item', as: 'remove'
  put '/add', to: 'cart#add_item', as: 'add'
  put '/make', to: 'order_meals#make', as: 'make'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
