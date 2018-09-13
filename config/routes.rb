Rails.application.routes.draw do
	resources :users, only:[:new, :create, :destroy]	
	resources :pictures
end

