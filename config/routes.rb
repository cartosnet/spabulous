Rails.application.routes.draw do
  devise_for :user
  resources :flats, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :bookings, only: [:new, :show, :create]
end
