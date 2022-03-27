Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'home/index', to: 'home#index'
  resources :patients
  get '/dashboard', to: 'patients#dashboard', as: 'patient_dashboard'

  # Defines the root path route ("/")
  root "home#index"
end
