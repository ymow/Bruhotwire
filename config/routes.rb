Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/create'
  resources :tasks
  post "tasks/:id/toggle", to: "tasks#toggle"
  resources :notifications, only: [ :index ]
  resources :posts
  resources :tasks
  devise_for :users
  root "posts#index"

end
