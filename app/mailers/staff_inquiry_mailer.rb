class StaffInquiryMailer < ApplicationMailer

	def staff_send_mail(staff_inquiry)
		@staff_inquiry = staff_inquiry
		@staff = @staff_inquiry.staff
		mail(
			from: @staff.email,
			to:    'portforliofest@gmail.com',
			subject: 'お問い合わせ通知'
			)
	end
end
