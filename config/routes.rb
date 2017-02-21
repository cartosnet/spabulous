Rails.application.routes.draw do

  devise_for :user, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :flats, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :bookings, only: [:new, :show, :create]

  root to: "flats#index"
end
