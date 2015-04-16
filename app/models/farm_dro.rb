class FarmDro < ActiveRecord::Base
	belongs_to :systatik
	belongs_to :mfarmako

	def self.import(file)

		CSV.foreach(file.path,headers:true,:header_converters=>lambda{|h| h.downcase.gsub('-','_').gsub(' ','_').gsub('kod_farmak','kod_farmak_id').gsub('kodikos','kodikos_id')}) do |row|
			farm_dro_hash=row.to_hash
			farm_dro=FarmDro.where(kodikos_id:farm_dro_hash['kodikos_id'],kod_farmak_id:farm_dro_hash['kod_farmak_id'])
			if farm_dro.count==1
				farm_dro.first.update_attributes(farm_dro_hash)
			else
				FarmDro.create!(farm_dro_hash)
			end

		end
	end

end
