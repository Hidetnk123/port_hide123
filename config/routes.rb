Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#front'
  resources :products

  mount ActionCable.server => '/cable'

  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
