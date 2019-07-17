class StaffReply < ApplicationRecord

	belongs_to :staff_inquiry
	belongs_to :admin

end
