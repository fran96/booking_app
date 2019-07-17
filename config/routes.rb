Rails.application.routes.draw do
  get 'rooms/new'
  get '/rooms/:id', to: 'rooms#show'
  post '/rooms',  to: 'rooms#create'
  get 'sessions/new'
  get 'users/new'
  get '/users/:id', to: 'users#show'
  get 'homepage/index'
  post '/bookings',  to: 'bookings#create'
  get '/bookings/:id', to: 'bookings#show'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  resources :bookings
  resources :rooms
  resources :users


  root 'homepage#index'
end
