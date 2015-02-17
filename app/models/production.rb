class Production < ActiveRecord::Base
  belongs_to :pmu
  belongs_to :produce

  has_many :certifications
  has_many :standards ,through: :certifications
end
