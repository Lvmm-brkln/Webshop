Rails.application.routes.draw do

	devise_for :users
	resources :charges
	resources :cart

	root 'home#index'

	get '/cart', to: 'carts#cart'
	get '/items/all', to: 'items#listing'

	get '/single', to: 'home#single'
	get '/product', to: 'home#product'
	get '/about', to: 'home#about'
	get '/contact', to: 'home#contact'

	post '/carts/new', to: 'carts#new'
end