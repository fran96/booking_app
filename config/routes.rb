Rails.application.routes.draw do
  get 'homepage/index'
  get 'bookings/new'
  resources :bookings
  root 'homepage#index'
end
