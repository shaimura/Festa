class StaffInquiryMailer < ApplicationMailer

	def staff_send_mail(staff_inquiry)
		@staff_inquiry = staff_inquiry
		mail(
			from: 'daken240515@gmail.com',
			to:    'daken240515@gmail.com',
			subject: 'お問い合わせ通知'
			)
	end
end
