Rails.application.routes.draw do
  root 'main#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts

  namespace :admin do
  	resources :articles
  end	
end