Rails.application.routes.draw do
  # I dont know whats this is for.
  get 'up' => 'rails/health#show', as: :rails_health_check

  root :to => 'home#index'

  resources :home, only: :index
end
