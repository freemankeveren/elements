Rails.application.routes.draw do


  get 'products/index'

  get 'products/show'

  get 'products/edit'

  get 'products/new'

  root to: 'home#index'

  devise_for :users
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
