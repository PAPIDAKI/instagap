class Pmu < ActiveRecord::Base
  belongs_to :grower

  has_many :productions
  has_many :certifications ,through: :productions
  has_many :produces,through: :productions
  has_many :certifications ,through: :productions
  has_many :standards,through: :certifications
end
