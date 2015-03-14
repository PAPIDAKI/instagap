class Mepembash < ActiveRecord::Base

	belongs_to :mcrop #,:class_name=> Mcrop, :foreign_key => "code_fyta"
	belongs_to :farmako #,:class_name=> Farmako,:foreign_key => "kod_farmak"

	def self.import(file)
		CSV.foreach(file.path,headers:true)do |row|
			mepembash_hash=row.to_hash
			mepembash=Mepembash.where(kod_farmak: mepembash_hash["kod_farmak"],code_fyta:mepembash_hash['code_fyta'])
			if mepembash.count==1
				mepembash.first.update_attributes(mepembash_hash)
			else
				Mepembash.create!(mepembash_hash)
			end
		end

	end
end


