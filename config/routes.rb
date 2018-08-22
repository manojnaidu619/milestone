Rails.application.routes.draw do
  devise_for :coordinators
  root 'home#index'                                   # Default Home page
  get 'dashboard', to: 'coordinators#dashboard'       # Homepage for logged in coordinator
  resources :coordinators, except: [:index]           # define Restful Routes for coordinators controller
  resources :events, except: [:index]                 # New event posting and display
  resources :profile, only: [:index, :create]         # Setting Profile pictures and account edit
end
