class StaffReplyMailer < ApplicationMailer

	def staff_reply_mail(staff_reply)
		@staff_reply = staff_reply
		@admin = @staff_reply.admin
		@staff = @staff_reply.staff_inquiry.staff
		mail(
			from: @admin.email,
			to:   @staff.email,
			subject: '返信内容'
			)
	end
end
