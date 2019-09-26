Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  namespace :admin do
    root to: '/admin/dashboards#show'
    resource :dashboard, only: [:show]
  end

  namespace :user do
    root to: '/customer/dashboards#show'
  end

  namespace :customer do
    resource :dashboard, only: [:show]
  end

  namespace :operator do
    resource :dashboard, only: [:show]
    resources :transactions, only: [:index]
    resources :users, only: [] do
      resources :transactions, only: [:new, :create]
    end
  end

  root 'pages#index'
end
