# Preview all emails at http://localhost:3000/rails/mailers/staff_inquiry_mailer
class StaffInquiryMailerPreview < ActionMailer::Preview
	def staff_inquiry
		staff_inquiry = StaffInquiry.new(staff_id: 1, message: "お問い合わせメッセージ")

		StaffInquiryMailer.staff_send_mail(staff_inquiry)
	end

end
