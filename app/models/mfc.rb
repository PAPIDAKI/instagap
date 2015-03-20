class Mfc < ActiveRecord::Base


	def self.import(file)
	  CSV.foreach(file.path ,
	              headers:true,
	              :header_converters=>lambda{|h|h.downcase.gsub(' ','_').gsub('-','_').gsub('kod_farmak','farmako_id').gsub('code_fyta','mcrop_id')}
	               ) do |row|


	  	fcs=FarmakoCropSkeyasmatum.where(farmako_id: fcs_hash["farmako_id"],mcrop_id: fcs_hash["mcrop_id"])
	  	if fcs.count==1
	  	fcs.first.update_attributes(fcs_hash)
	  	else
	  		FarmakoCropSkeyasmatum.create!(fcs_hash)
	  	end
	  end

 end


end

