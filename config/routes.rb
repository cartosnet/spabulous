Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users do
    resources :flats, only: [:new, :create, :edit, :update, :delete]
    resources :bookings, only: [:new, :show, :create]
  end
  resources :flats, only: [:index, :show]

  root to: "flats#index"

end
