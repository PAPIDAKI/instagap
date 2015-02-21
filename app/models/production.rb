class Production < ActiveRecord::Base
  belongs_to :pmu
  belongs_to :produce

  has_many :certifications,dependent: :destroy
  has_many :standards ,through: :certifications
end
