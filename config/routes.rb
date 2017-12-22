Rails.application.routes.draw do
	get 'welcome/index'
	root 'welcome#index'

  	resources :comments
  	resources :users
  	resources :articles
  	get 'articles/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :categories, except: [:destroy]


	
end
