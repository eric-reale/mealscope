Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  root to: 'pages#home'
  get '/error', to: 'pages#error'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'profile', to: 'pages#profile', as: :profile
  get 'test', to: 'pages#test', as: :test

  resources :meals do
    resources :reviews, only: [ :new, :create, :destroy ]
    resources :pins, only: [ :create, :edit, :update, :destroy ]
  end

  resources :collections, only: [ :show, :create, :edit, :update, :destroy ]
  resources :reviews, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
