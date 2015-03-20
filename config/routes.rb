Rails.application.routes.draw do


  resources :mfcs do
	  collection {post :import}
  end


  resources :farmako_crop_skeyasmata do
	  collection {post :import}
  end


  resources :farm_dros do
	  collection{post :import}
  end

  resources :systatiks,param: :kodikos  do
	  collection {post :import}
  end

  resources :farmakos ,param: :kod_farmak do
	  collection {post :import}
  end

  resources :mepembashes do
	  collection {post :import}
  end

  resources :mcrops ,param: :code_fyta do
	  collection {post :import}
  end

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


	namespace :team do
		resources :registrations,:only=>[:show] do

			resources :activities
			resources :fertilizations,controller:'activities',type:'Fertilization'
			resources :irrigations, controller: 'activities',type:'Irrigation'
			resources :protections, controller: 'activities',type:'Protection'
			resources :cultivations, controller:'activities',type:'Cultivation'
			resources :harvestings,controller: 'activities',type:'Harvesting'

			get 'activities/fertilizations'=>"activities#index",scope:'fertilizations'
			# get 'activities/irrigations'=>"activities#index",scope:'irrigations'
			# get 'activities/protections'=>"activities#index",scope:'protections'


		end

	end


	resources :activities
	resources :fertilizations,controller:'activities',type:'Fertilization'
	resources :irrigations, controller: 'activities',type:'Irrigation'
	resources :protections, controller: 'activities',type:'Protection'
	resources :cultivations, controller:'activities',type:'Cultivation'
	resources :harvestings,  controller:'activities',type:'Harvesting'








	get 'pages/about'
  get 'pages/contact'

	devise_for :users








end
