Rails.application.routes.draw do
  resources :pps

  resources :irrigations

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

  resources :growers,:produces,:standards

  resources :pmus do
		resources :productions
	end

  resources :productions do
	  resources :fertilizations
	  resources :irrigations
	  resources :pps

  end


  get 'pages/about'
  get 'pages/contact'

	devise_for :users




end
