Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  get 'logout', to: 'sessions#destroy'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  resources :categories, shallow: true do
    resources :topics, shallow: true do
      resources :problems, shallow: true do
        resources :comments
        get 'like'
      end
    end
  end
  root to: 'pages#index'
end
