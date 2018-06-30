Rails.application.routes.draw do

  devise_for :users
  get 'send/index'

  resources :programmers
  resources :projects
  resources :contracts do
  	member do
	    patch :hire_responsys_accept
	    put   :hire_responsys_accept
	  end
  end
  
  post 'contracts/:id', to: 'contracts#hire_responsys_accept'
  root 'send#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
