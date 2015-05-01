class Entypo < ActiveRecord::Base
	
	has_many :mfarmkasts
	has_many :mastfarms
	


	def self.import(file)
		CSV.foreach(file.path,headers:true,
							:header_converters=>lambda{|h| h.downcase.gsub('-','_').gsub' ','_'}) do |row|
			entypo_hash=row.to_hash
			entypo=Entypo.where(counter: entypo_hash['counter'])
			if entypo.count==1
				entypo.first.update_attributes(entypo_hash)
			else
				Entypo.create!(entypo_hash)
			end
		end
	end
	
end
