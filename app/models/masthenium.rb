class Masthenium < ActiveRecord::Base
	self.primary_key='code_asten'
	has_many :mfarmkasts

	#from this table get a list of asthenias names

	def self.import(file)
		CSV.foreach(file.path,headers:true,
							  :header_converters=>lambda{|h| h.try(:downcase)}) do |row|
			masthenium_hash=row.to_hash
			masthenium=Masthenium.where(code_asten: masthenium_hash['code_asten'])
			if masthenium.count==1
				masthenium.first.update_attributes(masthenium_hash)
			else
				Masthenium.create!(masthenium_hash)
			end
		end

	end
end
