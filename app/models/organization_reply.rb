class OrganizationReply < ApplicationRecord

	belongs_to :organization_inquiry
	belongs_to :admin

	validates :message, presence: true, length:{ in: 1..1000 }


   def organization
   	Organization.unscoped{super}
   end

end
