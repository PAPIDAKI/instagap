class Mfc < ActiveRecord::Base
#chem association	
	belongs_to :mcrop
	belongs_to :farmako


	def self.import(file)
	  CSV.foreach(file.path ,
	              headers:true,
	              :header_converters=>lambda{|h|h.downcase.gsub(' ','_').gsub('-','_').gsub('kod_farmak','farmako_id').gsub('code_fyta','mcrop_id')}
	               ) do |row|

      fcs_hash=row.to_hash
	  	fcs=Mfc.where(farmako_id: fcs_hash["farmako_id"],mcrop_id: fcs_hash["mcrop_id"])
	  	if fcs.count==1
	  	fcs.first.update_attributes(fcs_hash)
	  	else
	  		Mfc.create!(fcs_hash)
	  	end
	  end

	end

	def phi
		#mfc.farmako.mepembashes.where(:mcrop_id==params[:id]).last.try(:diast_pros) %></td>

	end

	def prime_ingredient
		#mfc.farmako.systatiks.first.try(:onomadron) %></td>

	end






end

