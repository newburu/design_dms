Rails.application.routes.draw do
  resources :designs do
    member do
      get :download_design_img
      get :download_pattern_img
      get :download_finished_img
    end
  end
  resources :sexes
  resources :sizes
  resources :skirt_types
  resources :tops_types
  resources :swimsuit_types
  resources :cuff_types
  resources :sleeve_types
  resources :collar_types
  resources :genres
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }

  root 'portals#index'

  get '/portals', to: 'portals#index'

  # 静的ページ
  get 'static_pages/info'
  get 'static_pages/update'

  devise_scope :user do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
    get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

end
