class OrganizationInquiry < ApplicationRecord

	belongs_to :organization

	has_one :organization_reply

	enum inquiri_status:{未対応: 0, 返信済み: 1}

	validates :message, presence: true, length:{ in: 1..1000 }



   def organization
   	Organization.unscoped{super}
   end


end
