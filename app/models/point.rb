class Point < ApplicationRecord

	belongs_to :staff

	belongs_to :festival

   validates :plus_point, numericality: {greater_than_or_equal_to: 0}

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
