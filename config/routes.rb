Rails.application.routes.draw do
  resources :flight
  resources :bookings
  resources :passengers, only: :new
  root to: 'flights#index'
end
