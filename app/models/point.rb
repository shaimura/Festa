class Point < ApplicationRecord

	belongs_to :staff

	belongs_to :festival

   def staff
   	Staff.unscoped{super}
   end


   def organization
   	Organization.unscoped{super}
   end


   def festival
   	Festival.unscoped{super}
   end

end
