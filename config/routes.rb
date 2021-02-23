Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :pets, only: [:new, :create, :show, :index, :edit, :update] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index, :edit, :update]
end
