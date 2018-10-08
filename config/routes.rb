# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :markets
    resources :market_places
    resources :categories
    resources :packages
    resources :referral_fees
    resources :shipping_rates
    resources :calculations

    root to: 'markets#index'
  end
  root 'markets#index'

  resources :markets, only: %i[index show]

  resources :calculations, only: %i[show create]
end
