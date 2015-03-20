class Systatik < ActiveRecord::Base
	self.primary_key="kodikos"
	has_many :farm_dros
	has_many :farmakos,through: :farm_dros



  def self.import(file)

  	CSV.foreach(file.path ,headers: true,:header_converters =>lambda{|h| h.downcase.gsub('-','_').gsub(' ','_')}) do |row|

  		systatik_hash=row.to_hash
  		systatik=Systatik.where(kodikos: systatik_hash["kodikos"])
  		if systatik==1
  			systatik.first.update_attributes(systatik_hash)
  		else
  			Systatik.create!(systatik_hash)
  		end
  	end
  end


end

