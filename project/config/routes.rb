Rails.application.routes.draw do

  get 'home/home_page'
  root to: 'home#home_page'
  resources :posts
  get '/index' => 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
