Rails.application.routes.draw do
  resources :notifications, only: [ :index ]
  resources :posts
  devise_for :users
  root "posts#index"
end
