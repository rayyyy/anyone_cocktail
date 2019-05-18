# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :auth_users
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'my_page', to: 'my_page#index'
  get '/bartenders/:id', to: 'bartenders#show'
end
