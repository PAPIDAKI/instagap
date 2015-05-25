class Registration < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  has_many :pmus,dependent: :destroy
  has_many :productions ,through: :pmus
  has_many :mcrops,through: :productions
  
  has_many :activities
  delegate :irrigations,:fertilizations,:protections,:harvestings ,:cultivations, to: :activities


  ROLES=['Grower','Agronomist','Auditor']
end
