class Mastfarm < ActiveRecord::Base
# belongs_to :entypo
belongs_to :mdosh
belongs_to :masthenium
belongs_to :mfarmkast

 
	def self.import(file)
		CSV.foreach(file.path,headers:true,:header_converters=>lambda{|h| h.try(:downcase).gsub('-','_').gsub(' ','_').gsub('counter','counterable_id').gsub('code_asten','masthenium_id').gsub('kod_doshs','mdosh_id')}) do |row|
			mastfarm_hash=row.to_hash
			mastfarm=Mastfarm.where(counter: mastfarm_hash['counter'])
			if mastfarm==1
				mastfarm.first.update_attributes(mastfarm_hash)
			else
				Mastfarm.create!(mastfarm_hash)
			end
	   end
	end
end
