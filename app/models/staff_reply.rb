class StaffReply < ApplicationRecord

	belongs_to :staff_inquiry
	belongs_to :admin


	validates :message, presence: true, length:{ in: 1..1000 }


   def staff
   	Staff.unscoped{super}
   end

end
