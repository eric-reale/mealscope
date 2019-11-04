Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/error', to: 'pages#error'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'profile', to: 'pages#profile', as: :profile

  resources :meals do
    resources :reviews, only: [ :new, :create, :destroy ]
    resources :pins, only: [ :create, :edit, :update, :destroy ]
  end

  resources :collections, only: [ :create, :edit, :update, :destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
