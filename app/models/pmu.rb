class Pmu < ActiveRecord::Base
  belongs_to :registration

  has_many :productions,dependent: :destroy
  has_many :produces,through: :productions
  has_many :certifications ,through: :productions
  has_many :standards,through: :certifications
end
