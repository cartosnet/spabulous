Rails.application.routes.draw do

  get 'pages/home'

  get 'pages/about'

  get 'pages/info'

  get 'pages/contact'

  devise_for :user, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :flats, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  resources :flats do
    resources :bookings, only: [:new, :show, :create]
  end

  root to: "pages#home"
  mount Attachinary::Engine => "/attachinary"
end
