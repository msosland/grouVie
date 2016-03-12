Rails.application.routes.draw do
  root 'users#index'
  get '/login' => 'sessions#login'
  get '/logout' => 'sessions#logout'

  resources :users do
    resources :groups, only: [:index, :new, :create]
    resources :memberships
  end

  resources :groups, except: [:index, :new, :create] do
    resources :challenges, only: [:index, :new, :create]
  end

  resources :challenges, except: [:index, :new, :create] do
    resources :participations
  end

end
