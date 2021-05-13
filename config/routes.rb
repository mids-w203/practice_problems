Rails.application.routes.draw do
  resources :categories
  root to: 'pages#index'
end
