Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :flats, only: [:new, :create, :edit, :update, :delete]
    resources :bookings, only: [:new, :show, :create]
  end
  resources :flats, only: [:index, :show]


end
