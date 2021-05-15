Rails.application.routes.draw do
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
