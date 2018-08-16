Rails.application.routes.draw do
  devise_for :coordinators
  root 'home#index'
  get 'dashboard', to: 'coordinators#dashboard'
  resources :coordinators, except: [:index]           # define Restful Routes for coordinators controller
  resources :events, except: [:index]
end
