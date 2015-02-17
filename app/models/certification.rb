class Certification < ActiveRecord::Base
  belongs_to :standard
  belongs_to :production
end
