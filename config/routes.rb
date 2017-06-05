Rails.application.routes.draw do


  root to: 'home#index'

  devise_for :users
  resources :stores
  resources :products
  post '/addproduct/:id', to: 'home#add_to_cart', as: 'add_to_cart'
  delete 'deleteproduct/:id', to: 'home#delete_from_cart', as: 'delete_from_cart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
