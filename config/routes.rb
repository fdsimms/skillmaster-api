Rails.application.routes.draw do
  get '/auth/facebook/callback', to: "api/sessions#omniauth_facebook"

  resources :users
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:index, :show, :create, :update]
    resource :session, only: [:create, :destroy, :show]
  end
end
