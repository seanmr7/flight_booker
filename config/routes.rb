Rails.application.routes.draw do
  resources :flight
  root to: 'flights#index'
end
