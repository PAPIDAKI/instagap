class Mfarmkziz < ActiveRecord::Base

	belongs_to :mcrop
	belongs_to :mfarmako
	has_many :mastfarms
	has_many :masthenias,through: :mastfarms

	def self.import(file)
		CSV.foreach(file.path,headers: true,:header_converters=>lambda{|h| h.try(:downcase).gsub('-','_').gsub(' ','_').gsub('kod_farmak','mfarmako_id').gsub('code_fyta','mcrop_id') }) do |row|

			row.delete('soil') #if row['soil']
		    row.delete('code')

			mfarmkziz_hash=row.to_hash
			mfarmkziz=Mfarmkziz.where(counter: mfarmkziz_hash['counter'])
			 if mfarmkziz==1
				 mfarmkziz.first.update_attributes(mfarmkziz_hash)
			 else
				 Mfarmkziz.create!(mfarmkziz_hash) 
			 end
		end
	end
end
