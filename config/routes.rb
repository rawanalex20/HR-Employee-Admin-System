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
  get '*path?locale=:locale', to: 'application#switch_locale', as: 'switch'
  root "users#index"
  
end
