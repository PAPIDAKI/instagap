class Registration < ActiveRecord::Base
  belongs_to :group
  has_many :pmus,dependent: :destroy
  has_many :productions ,through: :pmus

	ROLES=['Grower','Agronomist','Auditor']
end
