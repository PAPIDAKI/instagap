class Productionactiviation < ActiveRecord::Base
	belongs_to :activity
	belongs_to :production
end
