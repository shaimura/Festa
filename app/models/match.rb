class Match < ApplicationRecord

	belongs_to :staff

	belongs_to :festival


   def organization
   	Organization.unscoped{super}
   end

   def festival
   	Festival.unscoped{super}
   end

   def staff
   	Staff.unscoped{super}
   end

end
