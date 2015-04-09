class Activity < ActiveRecord::Base

	belongs_to :registration

	has_many :productionactiviations,dependent: :destroy
	has_many :productions ,through: :productionactiviations


	self.inheritance_column =:type

	def self.types
		%w(Fertilization  Irrigation Protection Harvesting Cultivation )
	end


	has_many :quants
	has_many :chems,through: :quants
	accepts_nested_attributes_for :quants,
	                              allow_destroy: true,
	                              reject_if: :all_blank
	accepts_nested_attributes_for :chems


	scope :fertilizations, -> {where(type:'Fertilization')}
	scope :irrigations, -> {where(type: 'Irrigation')}
	scope :protections, -> {where(type:'Protection')}
	scope :cultivations, -> {where(type:'Cultivation')}
	scope :harvestings, -> {where(type:'Harvesting')}

end



















