Rails.application.routes.draw do
  get '/auth/facebook/callback', to: "api/sessions#omniauth_facebook"

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:index, :show, :create, :update]
    resource :session, only: [:create, :destroy, :show]
    resources :sports, only: [:index, :show, :create, :update]
  end
end
