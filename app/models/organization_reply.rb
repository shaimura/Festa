class OrganizationReply < ApplicationRecord

	belongs_to :organization_inquiry
	belongs_to :admin

end
