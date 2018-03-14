Rails.application.routes.draw do
	root 'recipe#index'

	resources :recipes

end
