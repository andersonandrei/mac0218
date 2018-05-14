Rails.application.routes.draw do
  resources :contracts
  devise_for :users
  get 'send/index'

  resources :programmers
  resources :projects
  resources :contracts

  root 'send#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
