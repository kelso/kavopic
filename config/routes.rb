Rails.application.routes.draw do
  devise_for :users

  namespace :user do
    root to: 'dashboards#show'
  end

  namespace :customer do
    resource :dashboard, only: [:show]
  end

  namespace :operator do
    resource :dashboard, only: [:show]
  end

  root 'pages#index'
end
