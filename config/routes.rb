Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
      get    '/login',   to: 'sessions#new'
      post   '/login',   to: 'sessions#create'
      delete '/logout',  to: 'sessions#destroy'

  get 'users/new'

      root 'products#index'
      get  '/help',    to: 'static_pages#help'
      get  '/about',   to: 'static_pages#about'
      get  '/contact', to: 'static_pages#contact'
       get  '/signup',  to: 'users#new'
       resources :users
       resources :charges
        resources :purchases,only: [:show]
         resources :products,only: [:index, :show]
    end