class Mcrop < ActiveRecord::Base
	self.primary_key ='code_fyta'
	PRODUCES=[]


#Chems table relationships 
	has_many :mepembashes
     # has_many :farmakos,through: :mepembashes
	has_many :mfcs
	has_many :farmakos,through: :mfcs


	has_many :productions
	has_many :pmus,through: :productions
	has_many :growers,through: :pmus
	has_many :groups,through: :growers
	has_many :certifications,through: :productions
	has_many :standards,through: :certifications

	scope :produce_10,->{Mcrop.find(1140000,1140100,1140300,1140503,1140900,1090000,1090200,1090300,1120800,1170100)}
	scope :produce_20,->{Mcrop.find(1140000,1140100,1140300,1140503,1140900,1090000,1090200,1090300,1120800,1170100,1120500,1120501,1120503,1120504,1160410,1170900,1053500,1053600,1053700,1062000,1220600,1050200,1050201,1050202,1050203,1060201,1060202,1221000) }
	scope :non_empty,->{Mcrop.where('general=1')}


	#def self.produce_10
	#	Mcrop.find(1140000,1140100,1140300,1140503,1140900,1090000,1090200,1090300,1120800,1170100)
	#end

	#def self.produce_20
	#	Mcrop.find(1140000,1140100,1140300,1140503,1140900,1090000,1090200,1090300,1120800,1170100,1120500,1120501,1120503,1120504,1160410,1170900,1053500,1053600,1053700,1062000,1220600,1050200,1050201,1050202,1050203,1060201,1060202,1221000)
	#end

	def self.import(file)
		CSV.foreach(file.path,headers:true,:header_converters => lambda{|h| h.try(:downcase)}) do |row|


			mcrop_hash=row.to_hash
			mcrop=Mcrop.where(code_fyta: mcrop_hash["code_fyta"])

			if mcrop.count==1
				mcrop.first.update_attributes(mcrop_hash)
			else
				Mcrop.create!(mcrop_hash)
			end
		end
	end

end
