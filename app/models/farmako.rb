class Farmako < ActiveRecord::Base
	has_many :mepembashes
	has_many :mcrops,through: :mepembashes

	def self.import(file)
		CSV.foreach(file.path,headers:true,:header_converters =>lambda{|h| h.downcase.gsub('-','_').gsub(' ','_')}) do |row|
			#import csv and fix the  row to downcase and replace blaks and - with _

			farmako_hash=row.to_hash

			#to ipdate the list without creating double entries
			farmako=Farmako.where(kod_farmak:farmako_hash['kod_farmak'])
			#look for a row uniqueness if kod_farmak is unique
			if farmako.count==1
				farmako.first.update_attributes(farmako_hash)
			else
				Farmako.create!(farmako_hash)
			end
		end
	end

end
