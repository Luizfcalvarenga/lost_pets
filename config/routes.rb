Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pets#index"
  resources :pets
  resources :users, only: [:indes, :show]

  get 'last_five', to: 'pets#five_last_pets'
end
