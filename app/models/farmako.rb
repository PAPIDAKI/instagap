class Farmako < ActiveRecord::Base
	
	

	has_many :farm_dros
	has_many :systatiks,through: :farm_dros

	has_many :mfcs
	has_many :mcrops,through: :mfcs

	has_many :mepembashes
	has_many :mcrops,through: :mepembashes

	has_many :mfarmkasts



	def self.import(file)
		CSV.foreach(file.path,headers:true,:header_converters =>lambda{|h| h.downcase.gsub('-','_').gsub(' ','_')},
									    	:converters =>lambda{|l| l.gsub('([0-9]{2})/+([0-9]{2})/+([0-9]{4}) 00:00:00',$2/$1/$3)} )do |row|
 
			#import csv and fix the  row to downcase and replace blaks and - with _

			farmako_hash=row.to_hash

			#to update the list without creating double entries
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
