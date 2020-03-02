# frozen_string_literal: true

Rails.application.routes.draw do
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/login', to: 'session#new'
  get '/signup', to: 'user#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
