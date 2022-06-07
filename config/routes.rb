Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :genres
  root "movies#index"

  get "movies/filter/:filter" => "movies#index", as: :filtered_movies

  resources :movies do
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end

  resources :users

  resource :session, only: [:new, :create, :destroy]

  get "signup" => "users#new"
  get "signin" => "sessions#new"

  resources :password_resets, only: [:new, :create, :edit, :update]
  # get "movies" => "movies#index"
  # get "movies/new" => "movies#new"
  # get "movies/:id" => "movies#show", as: "movie"
  # get "movies/:id/edit" => "movies#edit", as: "edit_movie"

  # patch "movies/:id" => "movies#update"
end
