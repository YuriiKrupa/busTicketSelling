Rails.application.routes.draw do
  resources :trips
  resources :buses
  resources :tickets
  devise_for :users, controllers: {
        registrations: 'registration/registrations'
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static#index'

end