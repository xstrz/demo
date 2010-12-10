Demo::Application.routes.draw do
  devise_for :users

  resources :posts
  
  #match '/new',    :to => 'posts#new'
  #match '/show',   :to => 'posts#show'
  root :to => "posts#index"
end
