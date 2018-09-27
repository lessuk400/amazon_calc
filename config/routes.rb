# frozen_string_literal: true

Rails.application.routes.draw do
  resources :markets, only: %i[index show]

  resources :calculations, only: %i[create]
end
