Rails.application.routes.draw do
	devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

resources :users, only: [:show, :edit, :update, :index] do
	put "blacklisted" => "users#blacklisted"
end
resources :comments, only: [:show, :create, :update]
	resources :posts do
    resources :comments
		member do
			put "like" => "posts#like"
			put "dumpster" => "posts#dumpsterr"
		end
  end
  root to: 'pages#home'
  delete '/users/:id', to: 'users#destroy'
  get 'sadmin_panel', to: 'pages#sadminpanel'
  get 'admin_panel', to: 'pages#adminpanel'
  get 'manage_users', to: 'pages#manageuser'
  get 'manage_posts', to: 'pages#managepost'
  get 'dumpster', to: 'pages#dumpster'
  get 'terms', to: 'pages#terms'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
