Rails.application.routes.draw do
  get 'home/about', to: 'home#about'
  get 'home/lookup', to: 'home#lookup'
  post 'home/lookup', to: 'home#lookup'
	root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
