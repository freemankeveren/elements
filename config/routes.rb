Rails.application.routes.draw do
  get 'stores/index'

  get 'stores/show'

  get 'stores/edit'

  get 'stores/new'

  root to: 'home#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
