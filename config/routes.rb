Rails.application.routes.draw do

	root 'welcome#index'

	resources :articles do
		# nested routes
		resources :comments
	end

end
