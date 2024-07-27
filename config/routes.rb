# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # I dont know whats this is for.
  get 'up' => 'rails/health#show', as: :rails_health_check

  root to: 'home#index'

  resources :home, only: :index
  resources :backoffice, only: :index
end
