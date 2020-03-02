# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create' # helps us cookies creation
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create' # helps us cookies creation
  delete '/logout',  to: 'sessions#destroy'

  resources :users, except: %i[new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
