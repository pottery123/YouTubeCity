Rails.application.routes.draw do


  root 'cities#index'
  post 'cities/johannesburg' => 'cities#johannesburg', as: 'johannesburg'

  post 'cities/find_city'    => 'cities#find_city',    as: 'find_city'
  get 'cities/find_city'     => 'cities#find_city',    as: 'find_city_form'




  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'cities#index'
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :cities, only: [:index]

  get 'cities/find_location' => 'cities#find_location', as: 'find_location'
end
