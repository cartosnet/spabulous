Rails.application.routes.draw do
  devise_for :users
  ressources :users do
    ressources :flats, only: [:new, :create, :edit, :update, :delete]
    ressources :bookings, only: [:new, :show, :create]
  end
  ressources :flats, only: [:index, :show]


end
