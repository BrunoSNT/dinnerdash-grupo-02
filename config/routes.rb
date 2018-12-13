Rails.application.routes.draw do
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  resources :backoffice_users
  root to: 'homes#index'
  resources :pedidos
  resources :order_meals
  resources :orders
  resources :situations
  resources :meals
  resources :categories
  resources :users
  
  put '/delete', to: 'carts#delete_item', as: 'delete'
  put '/add', to: 'carts#add_item', as: 'add'
<<<<<<< HEAD

  devise_for :users
=======
  
  devise_for :users, :path_prefix => 'my'
>>>>>>> refactV8


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
