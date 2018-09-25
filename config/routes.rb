# frozen_string_literal: true

Rails.application.routes.draw do
  resources :markets, only: :index

  resources :market_places, only: %i[show] do
    resources :calculations, only: %i[create]
  end
end
