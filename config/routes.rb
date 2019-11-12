Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  root to: 'pages#home'
  get '/error', to: 'pages#error'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'profile', to: 'pages#profile', as: :profile
  get 'restaurant-owners', to: 'pages#restaurant_owners', as: :restaurant_owners

  resources :meals do
    resources :reviews, only: [ :new, :create, :destroy ] # Why is there a :new? Review is created on meal show page.
    resources :pins, only: [ :create, :edit, :update ]
  end

  resources :pins, only: [ :destroy ]

  resources :restaurants #only: [ :index, :create, :show, :update, :destroy ] - do this later
  resources :collections, only: [ :show, :create, :edit, :update, :destroy ]
  resources :reviews, only: [:new, :create ] ## Why is this here?

  mount StripeEvent::Engine, at: '/stripe-webhooks'

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :meals, only: [ :index, :show, :update ]
    end
  end

end
