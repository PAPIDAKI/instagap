class Registration < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  has_many :productions ,validates: :uniqueness
  has_many :pmus ,through: :productions
  has_many :mcrops,through: :productions
  
  has_many :activities
  delegate :irrigations,:fertilizations,:protections,:harvestings ,:cultivations, to: :activities


  ROLES=['Grower','Agronomist','Auditor']
end
