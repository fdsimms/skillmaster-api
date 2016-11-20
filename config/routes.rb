Rails.application.routes.draw do
  get '/auth/facebook/callback', to: 'api/sessions#omniauth_facebook'
  devise_for :users,
    controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
    }

  namespace :api, defaults: {format: :json} do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :sports, only: [:index, :show, :create, :update]
    resources :skills, only: [:index, :show, :create, :update] do
      resources :lessons, only: [:index, :show, :create, :update]
    end
  end
end
