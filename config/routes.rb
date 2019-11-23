Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/players', to: 'players#index', as: 'players'
  get '/players/new', to: 'players#new', as: 'new_player'
  get '/players/:id/edit', to: 'players#edit', as: 'edit_player'
  post '/players/:id/edit', to: 'players#edit'
  get '/players/:id', to: 'players#show', as: 'player'
  post '/players', to: 'players#create'
  patch '/players/:id', to: 'players#update'
  delete '/players/:id', to: 'players#delete'

  get '/teams', to: 'teams#index', as: 'teams'
  get '/teams/:id', to: 'teams#show', as: 'team'
  delete '/teams/:id', to: 'teams#delete'
end
