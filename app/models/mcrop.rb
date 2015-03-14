class Mcrop < ActiveRecord::Base
	has_many :mepembashes
	has_many :farmakos,through: :mepembashes

	def self.import(file)
		CSV.foreach(file.path,headers:true,:header_converters => lambda{|h| h.try(:downcase)}) do |row|
			#Mcrop.create!row.to_hash
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
