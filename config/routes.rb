Rails.application.routes.draw do
  root 'users#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#logout'
  post '/challenges/:challenge_id/participations/:id' => 'participations#update'
  post '/users/:id' => 'users#update'

  resources :users, except: [:update] do
    resources :groups, only: [:index, :new, :create]
    resources :memberships
  end

  resources :groups, except: [:index, :new, :create] do
    resources :challenges, only: [:index, :new, :create]
    resources :comments, only: [:index, :new, :create]
  end

  resources :challenges, except: [:index, :new, :create] do
    resources :participations, except: [:update]
  end

end
