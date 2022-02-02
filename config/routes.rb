Rails.application.routes.draw do
  resources :targets
  resources :divisions
  resources :teams
  resources :employees
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
