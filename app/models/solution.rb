class Solution < ActiveRecord::Base
  belongs_to :activity
  belongs_to :mfc

  # def farmako_name
  # 	mfc.try(:gbonoma)
  # end

  # def farmako_name=(gbonoma)
  # 	self.mfc=Mfc.find_by_gbonoma(gbonoma) if gbonoma.present?
  # end

  # def phi
  # 	# the phi of the farmako selected 

  # end

  # def phi=(gbonoma)


  # end





end
       