Rails.application.routes.draw do
  resources :skills
  resources :groups
  post 'user_token' => 'user_token#create'
  resources :users
end
