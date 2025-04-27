# frozen_string_literal: true

Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check
  root 'dashboard#index'

  resources :authors
  resources :entries
end
