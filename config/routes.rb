Rails.application.routes.draw do
  
  resources :reservations
  
  resources :restaurants
  
  resources :tables
  
  root to: 'reservations#index'
  
end
