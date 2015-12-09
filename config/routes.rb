Rails.application.routes.draw do
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  devise_for :users

  resources :projects do
    resources :services do
      member do
        get :go
      end
      resources :tokens
    end
  end

  get "/auth/:provider/setup", to: "sessions#setup"
  get "/auth/:provider/callback", to: "sessions#callback"

  # This should probably be for moderators only
  authenticated :user do
    resources :providers
    root to: "projects#index", as: :authenticated_root
  end

  root to: "main#index"
end
