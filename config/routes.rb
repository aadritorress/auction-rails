
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # resources :items

  namespace :api do
    namespace :v1 do
      resources :items
      resources :users
      resources :bids
      resources :charities
      resources :purchases
      # , only: [:create]
      post '/login', to: 'auth#login'
      post '/login', to: 'auth#create'
      post '/login', to: 'auth#signup'
      # get '/profile', to: 'users#profile'
    end
  end
end 



