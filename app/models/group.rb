class Group < ActiveRecord::Base

	has_many :registrations,dependent: :destroy
	has_many :pmus, through: :registrations
	has_many :productions,through: :pmus



	#has_many :memberships ,dependent: :destroy
	#has_many :growers,through: :memberships
	has_many :produces,through: :productions
	has_many :certifications,through: :productions
	has_many :standards,through: :certifications

	mount_uploader :avatar, AvatarUploader

end
