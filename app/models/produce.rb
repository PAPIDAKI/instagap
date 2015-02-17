class Produce < ActiveRecord::Base
	has_many :productions
	has_many :pmus,through: :productions
	has_many :growers,through: :pmus
	has_many :groups,through: :growers
	has_many :certifications,through: :productions
	has_many :standards,through: :certifications
end
