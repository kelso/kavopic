Rails.application.routes.draw do
  devise_for :customers

  namespace :customer do
    root to: 'dashboards#show'
    resource :dashboard, only: [:show]
  end

  root 'pages#index'
end
