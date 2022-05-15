Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'dashboard', to: 'pages#dashboard'
  get 'dashboard_rooms', to: 'pages#dashboard_rooms'
  get 'dashboard_services', to: 'pages#dashboard_services'

  resources :rooms
  resources :services
end
