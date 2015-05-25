
class Mfc < ActiveRecord::Base
#chem association	
	belongs_to :mcrop
	belongs_to :mfarmako
	has_many :solutions

	#mfckats the join table of mfc and mkaegori
	# to get the category name of the brandname   
	#has_many :mfcskats
	belongs_to :mkatigori


	def self.import(file)
	  CSV.foreach(file.path ,
	              headers:true,
	              :header_converters=>lambda{|h|h.downcase.gsub(' ','_').gsub('-','_').gsub('kod_farmak','mfarmako_id').gsub('code_fyta','mcrop_id').gsub('edr_cod_kat','mkatigori_id')}
	               ) do |row|




      fcs_hash=row.to_hash
	  	#fcs=Mfc.where(mfarmako_id: fcs_hash["mfarmako_id"],mcrop_id: fcs_hash["mcrop_id"])
	  	fcs=Mfc.where(id: fcs_hash["id"])


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

