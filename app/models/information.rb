class Information < ApplicationRecord


	belongs_to :festival

	validates :message, length:{ in: 1..1000 }


   def festival
   	Festival.unscoped{super}
   end

   def organization
   	Organization.unscoped{super}
   end

   def staff
   	Staff.unscoped{super}
   end

end
