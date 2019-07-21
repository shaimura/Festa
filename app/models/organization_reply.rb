class OrganizationReply < ApplicationRecord

	belongs_to :organization_inquiry
	belongs_to :admin

	validates :message, length:{ in: 1..800 }


   def organization
   	Organization.unscoped{super}
   end

end
