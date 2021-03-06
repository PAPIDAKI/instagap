class Mfarmako < ActiveRecord::Base
	has_many :farm_dros
	has_many :systatiks,through: :farm_dros

	has_many :mfcs
	#has_many :mcrops,through: :mfcs

	has_many :mepembashes
	has_many :mcrops,through: :mepembashes

	has_many :mfarmkasts


	

	def self.import(file)
		CSV.foreach(file.path,headers:true,
							:header_converters =>lambda{|h| h.downcase.gsub('-','_').gsub(' ','_')},
							)do |row|
			#1.import csv and fix the  row to downcase and replace blaks and - with _
			# 2.Change the date format on the fly instead of doing it on the csv file
			# with find and replace .
			row[0]=row[0].gsub(/([0-9]{2}), 00:00:00/,'\1') rescue nil
			# row[0]=row[0].gsub(/([0-9]{2})\/+([0-9]{2})\/+([0-9]{2})/,'\2-\1-\3') rescue nil
			row[37]=row[37].gsub(/([0-9]{2}), 00:00:00/,'\1') rescue nil

			farmako_hash=row.to_hash

			#to update the list without creating double entries
			farmako=Mfarmako.where(kod_farmak:farmako_hash['kod_farmak'])
			#look for a row uniqueness if kod_farmak is unique
			if farmako.count==1
				farmako.first.update_attributes(farmako_hash)
			else
				Mfarmako.create!(farmako_hash)
			end
		end
	end

	def phi(params)
		mepembashes.where(mcrop_id:params).first.try(:diast_pros)  
	end

	def category(params)
        mfcs.where(mcrop_id:params).first.mkatigori.kathgoria
	end

	def prime_igredient
		systatiks.each do |systatik|
          systatik.try(:onomadron)
      end
	end

	def asthenias(params)
		z=mfarmkasts.where(mcrop_id:params).first.try(:counter)
		Mastfarm.where(counterable_id:z).includes(:masthenium)
	end

	def dosage(params)
		z=mfarmkasts.where(mcrop_id:params).first.try(:counter)
		Mastfarm.where(counterable_id:z).first.try(:dosh_farm)
	end
	def dosage_unit(params)
		z=mfarmkasts.where(mcrop_id:params).first.try(:counter)
		Mastfarm.where(counterable_id:z).first.try(:mdosh).try(:dosh)
	end

	


	

end
