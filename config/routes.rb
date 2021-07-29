Rails.application.routes.draw do
  root to: 'posts#index'
  get "posts/new"
  resources :posts, only: [:index, :new, :create]
end
