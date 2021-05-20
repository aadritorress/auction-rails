
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # resources :items

  namespace :api do
    namespace :v1 do
      resources :users
      resources :items
      # , only: [:create]
      post '/login', to: 'auth#login'
      
      # get '/profile', to: 'users#profile'
    end
  end
end 



