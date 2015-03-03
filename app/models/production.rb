class Production < ActiveRecord::Base
  belongs_to :pmu
  belongs_to :produce

  has_many :certifications,dependent: :destroy
  has_many :standards ,through: :certifications

  has_many :fertilizations
  has_many :irrigations
  has_many :pps

  validates :variety,uniqueness: :true

end
