# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/login', to: 'static_pages#login'
  get '/signup', to: 'static_pages#signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
