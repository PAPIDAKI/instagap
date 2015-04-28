class Mfarmkast < ActiveRecord::Base
	belongs_to :mcrop
	belongs_to :mfarmako
	belongs_to :entypo


	has_many :mastfarms
	has_many :masthenia,through: :mastfarms

	def self.import(file)
		CSV.foreach(file.path,headers: true,:header_converters=>lambda{|h| h.try(:downcase).gsub('-','_').gsub(' ','_').gsub('kod_farmak','mfarmako_id').gsub('code_fyta','mcrop_id') }) do |row|
			# if row['code'].delete;end
			# Remove xtra column for farmziz code 
			row.delete('soil') #if row['soil']
		    row.delete('code') 

			mfarmkast_hash=row.to_hash
			mfarmkast=Mfarmkast.where(counter: mfarmkast_hash['counter'])
			 if mfarmkast==1
				 mfarmkast.first.update_attributes(mfarmkast_hash)
			 else
				 Mfarmkast.create!(mfarmkast_hash) 
			 end
		end
	end
end
