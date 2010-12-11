Demo::Application.routes.draw do
  #get "pages/show"

  devise_for :users

  resources :posts, :pages
  
  
  #match '/user-post',    :to => 'posts#new'
  #match '/show',   :to => 'posts#show'
  root :to => "posts#index"
end
