Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  devise_for :operators

  namespace :admin do
    root to: '/admin/dashboards#show'
    resource :dashboard, only: [:show] do
      get :realtime
    end
    # get 'admin/dashboard/realtime' => 'admin/dashboards#realtime', as: :admin_realtime_dashboard
    resources :transactions, only: [:index, :destroy]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :operators, only: [:index, :edit, :update]
  end

  namespace :customer do
    root to: 'dashboards#show'
    resource :dashboard, only: [:show]
  end

  namespace :operator do
    root to: 'dashboards#show'
    resource :dashboard, only: [:show]
    resources :transactions, only: [:index]
    resources :customers, only: [] do
      resources :transactions, only: [:new, :create]
    end
  end

  resources :sample_items

  root 'pages#index'
end
