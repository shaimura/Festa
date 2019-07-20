class Present < ApplicationRecord

	acts_as_paranoid

	has_many :orders

	attachment :present_image



   def staff
   	Staff.unscoped{super}
   end


   def present
    Present.unscoped{super}
   end


end
