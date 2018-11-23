Rails.application.routes.draw do
  get 'situations/index'
  get 'situations/show'
  get 'situations/edit'
  get 'situations/new'
  resources :meals
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
