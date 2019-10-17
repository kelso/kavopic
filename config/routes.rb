Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers, controllers: { confirmations: 'customer/confirmations' }
  devise_for :operators

  namespace :admin do
    root to: '/admin/dashboards#show'
    resource :dashboard, only: [:show]
    resources :transactions, only: [:index, :destroy]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :operators, only: [:index, :show, :edit, :update]
    resources :organizations do
      patch :geocode, on: :member
      resources :operator_organizations
      resources :transactions, only: [:index]
    end
  end

  namespace :customer do
    root to: 'dashboards#show'
    resource :dashboard, only: [:show]
    resources :organizations, only: [:index, :show]
  end

  namespace :operator do
    root to: 'transactions#index'
    # resource :dashboard, only: [:show]
    resources :transactions, only: [:index] do
      get :new_info, on: :collection
    end
    resources :customers, only: [] do
      resources :transactions, only: [:new, :create]
    end
  end

  # TODO: resources :organizations, only: [:index, :show]
  resources :sample_items

  get 'about' => 'pages#about', as: :about
  root 'pages#index'
end
