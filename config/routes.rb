# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  # I dont know whats this is for.
  get 'up' => 'rails/health#show', as: :rails_health_check

  root to: 'home#index'

  resources :home, only: :index
  resources :backoffice, only: :index
  mount Sidekiq::Web => 'backoffice/sidekiq'
end
