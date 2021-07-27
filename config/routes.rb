Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get :slack_users, to: 'comments#slack_users'

  resources :users, only: [:index] do
    member do
      get 'instructor'
    end
  end
  
  resources :categories, shallow: true do
    resources :topics, shallow: true do
      resources :problems, shallow: true do
        resources :comments do 
          get 'like'
          get 'unlike'  
        end
        get 'like'
        get 'unlike'
        get 'solve'
        get 'unsolve'
      end
    end
  end
  root to: 'pages#index'
  get 'ping', to: 'pages#ping' 
  post 'preview', to: 'pages#preview'
end
