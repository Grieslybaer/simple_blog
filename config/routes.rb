SimpleBlog::Engine.routes.draw do
  resources :articles do
    resources :comments, only: [:create]
  end
  root to: "articles#index"
end
