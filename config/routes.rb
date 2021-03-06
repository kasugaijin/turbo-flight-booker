Rails.application.routes.draw do

  root 'flights#index'
  resources :bookings
  get '/search', to: 'bookings#search'
  get '/invalid', to: 'bookings#search'


  resources :passengers, only: [], param: :index do
    member do
      delete '(:id)' => 'passengers#destroy', as: ''
      post '/' => 'passengers#create'
    end
  end
end
