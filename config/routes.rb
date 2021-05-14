Rails.application.routes.draw do
  resources :categories, shallow: true do
    resources :topics
  end
  root to: 'pages#index'
end
