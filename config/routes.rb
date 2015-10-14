Rails.application.routes.draw do
  resources :providers
  devise_for :users

  resources :services do
    member do
      get :go
    end
    resources :tokens
  end

  get "/auth/:provider/setup", to: "sessions#setup"
  get "/auth/:provider/callback", to: "sessions#callback"

  root to: "services#index"
end
