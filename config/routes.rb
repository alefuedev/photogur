Rails.application.routes.draw do
  get 'users/new'
	resources :pictures
	resources :users
end

