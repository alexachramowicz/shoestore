Rails.application.routes.draw do

	get 'login', to: 'access#new'
	post 'login', to: 'access#create'
	delete 'logout', to: 'access#destroy'
	get 'admin', to: 'admin#index'
	resources :users
	resources :orders
	resources :lineitems
	resources :carts
	root "shopper#index", as: "shopper"
	get 'shopper/index'
	get 'shopper/search', to:'shopper#search'
	resources :products
end
