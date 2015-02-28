Rails.application.routes.draw do
  resources :fertilizations

	root "groups#index"

	namespace :team do
	resources :registrations
	end


	resources :groups do
	  namespace :team do
		 resources :registrations
	  end
	end

	namespace :team do
	  resources :registrations,:only=>[:show] do
			resources :pmus

		end
	end


	resources :pmus do
		resources :productions
	end

  resources :growers,:pmus,:productions,:produces,:standards

  get 'pages/about'
  get 'pages/contact'

	devise_for :users




end
