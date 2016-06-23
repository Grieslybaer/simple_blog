Rails.application.routes.draw do

  mount SimpleBlog::Engine, at: "/simple_blog"
  root to: 'simple_blog/articles#index'
end
