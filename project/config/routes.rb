Rails.application.routes.draw do
  get 'login/' => 'login#login'
  get '/home'=>'home#home'
  post '/walls_create' => 'walls#create'
  root :to => 'home#home'
  resources :comments
  resources :attachments
  resources :flags
  resources :likes
  resources :posts
  resources :walls
  resources :profiles
  resources :users
  resources :dumpsters
  resources :blacklists
  resources :administrators
  resources :super_admins 

  get '/posts/:id' => 'posts#show'
  get '/posts' => 'posts#index'
  post '/posts_create' => 'posts#create'
  delete '/posts/:id' => 'posts#destroy'

  get '/super_admins/:id' => 'super_admins#show'
  get '/super_admins' => 'super_admins#index'
  post '/super_admins_create' => 'super_admins#create' ##ELIMINAR ESTA WEA
  delete '/super_admins/:id' => 'super_admins#destroy'
  post '/super_admins' => 'super_admins#create'
    
  get '/administrators/:id' => 'administrators#show'
  get '/administrators' => 'administrators#index'
  post '/administrators_create' => 'administrators#create'
  delete '/administrators/:id' => 'administrators#destroy'
  

  get '/dumpsters/:id' => 'dumpsters#show'
  get '/dumpsters' => 'dumpsters#index'
  post '/dumpsters_create' => 'dumpsters#create'
  delete '/dumpsters/:id' => 'dumpsters#destroy'
  post '/dumpsters' => 'dumpsters#create'

  get '/blacklists/:id' => 'blacklists#show'
  get '/blacklists' => 'blacklists#index'
  post '/blacklists_create' => 'blacklists#create'
  delete '/blacklists/:id' => 'blacklists#destroy'
  post '/blacklists' => 'blacklists#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
