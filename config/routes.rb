Rails.application.routes.draw do
	get 'welcome/index'
	root 'welcome#index'

  	resources :comments
  	resources :articles
  	get 'articles/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :categories, except: [:destroy]
	get 'signup', to: 'users#new'
	resources :users, except: [:new]
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'

	
end
