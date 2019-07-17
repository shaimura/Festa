class StaffInquiry < ApplicationRecord

	belongs_to :staff

	has_one :staff_reply

	enum inquiri_status:{未対応: 0, 返信済み: 1}

end
