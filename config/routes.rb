Rails.application.routes.draw do
	root 'surfspots#index'
	get '/surfspots/api' => 'surfspots#spots'
	get '/businesses/api' => 'profiles#businesses'
	get '/profiles/public/:id' => 'profiles#show_public'
	devise_for :users, :controllers => { registrations: 'registrations' }
	resources :profiles, only: [:index, :show]
	resources :surfspots do
		resources :updates, only: [:new, :create, :edit, :show]
	end
	resources :specials, only: [:new, :create, :edit, :show]
end
