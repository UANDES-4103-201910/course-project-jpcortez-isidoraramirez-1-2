Rails.application.routes.draw do
	devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }	
  resources :posts do
    resources :comments
  end
  root to: 'pages#home'
 
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
