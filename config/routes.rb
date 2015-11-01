Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture', to: 'pokemon#capture'
  patch 'damage', to: 'pokemon#damage'
  patch 'heal', to: 'pokemon#heal'
  #post '/create', to:'pokemon#create'
  get 'new', to:'pokemon#new'
  post 'new', to: 'pokemon#capture'
end
