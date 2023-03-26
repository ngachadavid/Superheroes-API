Rails.application.routes.draw do
  resources :heropowers, only: [:index, :create]
  resources :heros, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/heropower', to: 'heropower#index'
  post '/heropower', to: 'heropower#create'
end
