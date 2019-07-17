class OrganizationReplyMailer < ApplicationMailer

	def organization_reply_mail(organization_reply)
		@organization_reply = organization_reply
		@admin = @organization_reply.admin
		@organization = @organization_reply.organization_inquiry.organization
		mail(
			from: @admin.email,
			to:   @organization.email,
			subject: '返信内容'
			)
	end

end
