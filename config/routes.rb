Rails.application.routes.draw do
  get 'home/index'
  resources :patient_encounters
  resources :service_locations
  resources :service_types
  resources :appointments
  resources :patient_dismissals
  devise_for :users
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
