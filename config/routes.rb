Rails.application.routes.draw do
  resources :bookings
  resources :rooms
  resources :charges
  root 'pages#home'

  get 'pages/rooms'
  get 'hostdashboard', to: 'pages#host_dashboard'
  get 'guestdashboard', to: 'pages#guest_dashboard'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
