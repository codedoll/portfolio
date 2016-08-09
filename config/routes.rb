Rails.application.routes.draw do
	get 'welcome/index'
	
	resources :articles do
	  resources :comments
	end

	root 'welcome#index'

	devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
