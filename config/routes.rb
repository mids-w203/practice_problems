Rails.application.routes.draw do
  resources :categories, shallow: true do
    resources :topics
  end
  resources :problems
  root to: 'pages#index'
end
