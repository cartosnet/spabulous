Rails.application.routes.draw do


  devise_for :user, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :flats, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  resources :flats do
    resources :bookings, only: [:new, :show, :create]
  end

  root to: "flats#index"
  mount Attachinary::Engine => "/attachinary"
end
