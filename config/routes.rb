Rails.application.routes.draw do
  devise_for :users
  get "/home", to: "home#index"
  resources :targets
  resources :divisions
  resources :teams
  resources :employees
  resources :users do
    member do
      delete 'delete_profile', to: 'users#delete_profile', as: 'delete_profile'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
