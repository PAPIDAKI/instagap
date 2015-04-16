class Mdosh < ActiveRecord::Base
	has_many :mastfarms

	def self.import(file)
		CSV.foreach(file.path,headers:true,:header_converters=>lambda{|h| h.try(:downcase)}) do |row|
			mdosh_hash=row.to_hash
			mdosh=Mdosh.where(kod_doshs: mdosh_hash["kod_doshs"])
			if mdosh.count==1
				mdosh.first.update_attributes(mdosh_hash)
			else
				Mdosh.create!(mdosh_hash)
			end
		end
	end

end
