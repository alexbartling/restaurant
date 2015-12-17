Rails.application.routes.draw do
  resources :orders, only: [:new, :create]
  resources :menus, only: [:index, :show]
  root to: 'menus#index'
end
