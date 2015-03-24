class Mcrop < ActiveRecord::Base
	self.primary_key ='code_fyta'

	has_many :mepembashes
 # has_many :farmakos,through: :mepembashes


	has_many :mfcs
	has_many :farmakos,through: :mfcs


	has_many :productions
	has_many :pmus,through: :productions
	has_many :growers,through: :pmus
	has_many :groups,through: :growers
	has_many :certifications,through: :productions
	has_many :standards,through: :certifications

	def self.import(file)
		CSV.foreach(file.path,headers:true,:header_converters => lambda{|h| h.try(:downcase)}) do |row|


			mcrop_hash=row.to_hash
			mcrop=Mcrop.where(code_fyta: mcrop_hash["code_fyta"])

			if mcrop.count==1
				mcrop.first.update_attributes(mcrop_hash)
			else
				Mcrop.create!(mcrop_hash)
			end
		end
	end

end
