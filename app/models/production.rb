class Production < ActiveRecord::Base
  belongs_to :pmu
  belongs_to :produce

  has_many :certifications,dependent: :destroy
  has_many :standards ,through: :certifications

  has_many :productionactiviations,dependent: :destroy
  has_many :activities,through: :productionactiviations


  delegate :irrigations,:fertilizations,:protections,:harvestings ,to: :activities


  validates :variety,uniqueness: :true

end
