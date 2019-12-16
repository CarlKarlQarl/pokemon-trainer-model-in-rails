Rails.application.routes.draw do
  resources :pokemon_trainers, only: [:index, :show, :create, :destroy] 
  resources :trainers, only: [:index, :show, :create, :destroy]
  resources :pokemons, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
