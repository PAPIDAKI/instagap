class Standard < ActiveRecord::Base

	has_many :certifications
	has_many :productions ,through: :certifications
	has_many :pmus ,through: :productions
	has_many :growers,through: :pmus
	has_many :groups,through: :growers
	has_many :produces ,through: :productions
end
