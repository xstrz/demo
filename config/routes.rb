Demo::Application.routes.draw do  
  #match '/authors/:id', :to => 'pages#show'

  devise_for :users

  resources :posts, :pages
  
  match '/about',    :to => 'pages#about'
  match '/contact',    :to => 'pages#contact'
  #match '/show',   :to => 'posts#show'
  root :to => "posts#index"
end
