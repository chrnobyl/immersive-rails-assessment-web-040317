Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]
  resources :appearances
  resources :sessions

  get '/guests/new', to: 'guests#new'
  get '/guests/:id', to: 'guests#show', as: 'guest'

  get 'episodes/:id', to: 'episodes#show', as: 'episode'

  get '/sessions', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

  get '/users', to: 'users#new'

  # get '/appearaces/new', to: 'appearances#new'
  # post '/appearances/new', to: 'appearances#create'
end
