Demo::Application.routes.draw do
  get "blogs/index"

  get "blogs/show"

  resources :posts
  resources :blogs
  
  get "posts/show"
  
  #match '/new',    :to => 'posts#new'
  #match '/show',   :to => 'posts#show'
  root :to => "posts#index"
end
