class Grower < ActiveRecord::Base
	has_many :memberships
	has_many :groups ,through: :memberships
	has_many :pmus,dependent: :destroy
	has_many :productions,through: :pmus
	has_many :produces,through: :productions
	has_many :certifications,through: :productions
	has_many :standards,through: :certifications

	belongs_to :user
end
