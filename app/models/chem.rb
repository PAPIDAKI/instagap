class Chem < ActiveRecord::Base
	has_many :quants
	has_many :activities ,through: :quants

end
