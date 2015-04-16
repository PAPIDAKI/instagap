class Mepembash < ActiveRecord::Base
#chems associations 
	belongs_to :mcrop
	belongs_to :mfarmako

	def self.import(file)
		CSV.foreach(file.path,headers:true,:header_converters =>lambda{|h| h.downcase.gsub('-','_').gsub(' ','_').gsub('kod_farmak','farmako_id').gsub('code_fyta','mcrop_id')}) do |row|
			mepembash_hash=row.to_hash
			mepembash=Mepembash.where(farmako_id: mepembash_hash["farmako_id"],mcrop_id:mepembash_hash['mcrop_id'])
			if mepembash.count==1
				mepembash.first.update_attributes(mepembash_hash)
			else
				Mepembash.create!(mepembash_hash)
			end
		end

	end
end


