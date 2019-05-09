Rails.application.routes.draw do
  get 'home/home'
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
