class Group < ActiveRecord::Base

	has_many :registrations,dependent: :destroy
	has_many :pmus, through: :registrations
	has_many :productions,through: :pmus



	#has_many :memberships ,dependent: :destroy
	#has_many :growers,through: :memberships
	has_many :produces,through: :productions
	has_many :certifications,through: :productions
	has_many :standards,through: :certifications

	belongs_to :user

	mount_uploader :avatar, AvatarUploader

	def team_registrations
		# code here
	end

	def team_registrations
		# code here
	end

end
