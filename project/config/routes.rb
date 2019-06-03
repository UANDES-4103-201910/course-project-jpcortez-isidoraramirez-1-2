Rails.application.routes.draw do
	devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

resources :users, only: [:show, :edit, :update]
resources :comments, only: [:show, :create, :update]
	resources :posts do
    resources :comments
		member do
			put "like" => "posts#vote"
		end
  end
  root to: 'pages#home'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
