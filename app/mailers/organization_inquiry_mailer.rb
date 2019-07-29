class OrganizationInquiryMailer < ApplicationMailer

	def organization_send_mail(organization_inquiry)
		@organization_inquiry = organization_inquiry
		@organization = @organization_inquiry.organization
		mail(
			from: @organization.email,
			to:    ENV['KEY'],
			subject: 'お問い合わせ通知'
			)
	end

end
