Rails.application.routes.draw do
  resources :designs
  resources :sexes
  resources :sizes
  resources :skirt_types
  resources :tops_types
  resources :swimsuit_types
  resources :cuff_types
  resources :sleeve_types
  resources :collar_types
  resources :genres
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
