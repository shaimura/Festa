class OrganizationInquiry < ApplicationRecord

	belongs_to :organization

	has_one :organization_reply

	enum inquiri_status:{未対応: 0, 返信済み: 1}


end
