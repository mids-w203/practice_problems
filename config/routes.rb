Rails.application.routes.draw do
  resources :categories, shallow: true do
    resources :topics, shallow: true do
      resources :problems do
        get 'like'
      end
    end
  end
  root to: 'pages#index'
end
