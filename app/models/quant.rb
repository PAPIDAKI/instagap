class Quant < ActiveRecord::Base
  
  belongs_to :activity
  belongs_to :chem
  accepts_nested_attributes_for :chem,:reject_if =>:all_blank



end
