Rails.application.routes.draw do
  resources :metrics

  resources :skills do
    resources :metrics, only: :index
  end

  resources :groups do
    resources :skills, only: :index
  end

  post 'user_token' => 'user_token#create'

  resources :users
end
