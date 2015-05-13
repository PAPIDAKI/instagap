Rails.application.routes.draw do



  resources :cocos

  resources :mfarmkzizs do
  	collection {post :import}
  end

  resources :entypos do
  	collection {post :import}
  end

  resources :mfarmakos do
  	collection {post :import}
  end

#============Chem resources ======
  #=====Imported CSVs======

  resources :mastfarms do
  	collection {post :import}
  end

  resources :mfarmkasts do
  	collection {post :import}
  end

  resources :mcfarmasts do 
  	collection {post :import}
  end

  resources :mdoshes do
  	collection {post :import}
  end

  resources :masthenia do
  	collection {post :import}
  end

  resources :mkatigoris do
  	collection {post :import}
  end

  resources :mfcs do
	  collection {post :import}
  end

  resources :farm_dros do
	  collection{post :import}
  end

  
#4.Systatik imports all the prime ingredients 
  resources :systatiks,param: :kodikos  do
	  collection {post :import}
  end

  
#3.Mepembash imports  the phi (diast_pros) is a join table (mcrop and farmako)
  resources :mepembashes do
	  collection {post :import}
  end

#2. Farmakos imports all chems for brand name 
  resources :farmakos ,param: :kod_farmak do
	  collection {post :import}
  end

#1.Mcrops imports all the crops 
# the get mcrops/produce_20 is  a scope to list selected crops 
  get 'mcrops/produce_20'=>'mcrops#index',scpope: 'produce_10'
  resources :mcrops ,param: :code_fyta do
	  collection {post :import}
  end
#========End of Chems =======================
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


	resources :activities do
		resources :chems
	end
	resources :fertilizations,controller:'activities',type:'Fertilization'
	resources :irrigations, controller: 'activities',type:'Irrigation'
	resources :protections, controller: 'activities',type:'Protection'
	resources :cultivations, controller:'activities',type:'Cultivation'
	resources :harvestings,  controller:'activities',type:'Harvesting'








	get 'pages/about'
  	get 'pages/contact'
  	get 'pages/chems'

	devise_for :users








end
