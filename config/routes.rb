Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rooms, only: [:index]
  resources :bookings, only: [:create, :update,:index]
  resources :users, only: [:index]
end
