Rails.application.routes.draw do
  devise_for :users
  resources :targets
  resources :divisions
  resources :teams
  resources :employees
  resources :users do
    member do
      delete 'delete_profile', to: 'users#delete_profile', as: 'delete_profile'
    end
  end
  get '*path', to: 'application#switch_locale', as: 'switch'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
