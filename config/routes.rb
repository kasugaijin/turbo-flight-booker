Rails.application.routes.draw do

  root 'flights#index'
  resources :bookings
  get '/search', to: 'bookings#search'

  resources :passengers, only: [], param: :index do
    member do
      delete '(:id)' => "passengers#destroy", as: ""
    end
  end

end
