# frozen_string_literal: true

Rails.application.routes.draw do
  get '/new_post', to: 'posts#new'
  post '/new_post', to: 'post#create'
  get '/posts', to: 'posts#index'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
