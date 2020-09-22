Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#front'
  resources :products do
    resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
