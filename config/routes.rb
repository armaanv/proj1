Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture', to: 'pokemons#capture'
  patch 'damage', to: 'pokemosn#damage'
  post '/create', to:'pokemons#create'
  get '/new', to:'pokemons#new'
end
