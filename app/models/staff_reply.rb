class StaffReply < ApplicationRecord

	belongs_to :staff_inquiry
	belongs_to :admin


	validates :message, length:{ in: 1..800 }


   def staff
   	Staff.unscoped{super}
   end


end
