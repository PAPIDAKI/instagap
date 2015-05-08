class Mcfarmast < ActiveRecord::Base
	belongs_to :farmako
	belongs_to :mcrop
	belongs_to :masthenium
	belongs_to :mdosh

	
	def self.import(file)
		CSV.foreach(file.path,headers:true,:header_converters=>lambda{|h| h.try(:downcase)}) do |row|
			mcfarmast_hash=row.to_hash
			#mcfarmast=Mcfarmast.where(kod_farmak: mcfarmast_hash['kod_farmak'],fbcode: mcfarmast_hash['fbcode'],)

			mcfarmast=Mcfarmast.where(id: mcfarmast_hash['id'])

			if mcfarmast.count==1
				mcfarmast.first.update_attributes(mcfarmast_hash)
			else
				Mcfarmast.create!(mcfarmast_hash)
			end
		end
	end
end
