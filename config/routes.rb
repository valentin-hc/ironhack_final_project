Rails.application.routes.draw do
	root 'profiles#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :profiles, only: [:index, :show]
end
