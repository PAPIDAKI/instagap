class Mkatigori < ActiveRecord::Base
	self.primary_key="edr_cod_kat"

	#from this table we get the  brand name  category type list
	has_many :mfcs
	def self.import(file)
		CSV.foreach(file.path,headers:true,:header_converters=>lambda{|h| h.try(:downcase)}) do |row|
			mkatigori_hash=row.to_hash
			mkatigori=Mkatigori.where(code_kathg: mkatigori_hash["code_kathg"])

			if mkatigori.count==1
				mkatigori.first.update_attributes(mkatigori_hash)
			else
				Mkatigori.create!(mkatigori_hash)
		    	end
		end
	end
end
