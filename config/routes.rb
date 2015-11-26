Rails.application.routes.draw do
	root 'surfspots#index'
	get '/surfspots/api' => 'surfspots#spots'
	get '/businesses/api' => 'profiles#businesses'
	devise_for :users, :controllers => { registrations: 'registrations' }
	resources :profiles, only: [:index, :show]
	resources :surfspots
end
