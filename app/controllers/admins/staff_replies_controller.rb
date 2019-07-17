class Admins::StaffRepliesController < ApplicationController

  def create
  	@staff_reply = StaffReply.new(staff_reply_params)
    @staff_reply.admin = current_admin
  	@staff_reply.save!
    @staff_inquiry = @staff_reply.staff_inquiry
    @staff_inquiry.inquiri_status = 1
    @staff_inquiry.save!
    StaffReplyMailer.staff_reply_mail(@staff_reply).deliver
    redirect_to admins_organization_inquirys_path
  end


  def staff_reply_params
  	params.require(:staff_reply).permit(:id, :admin_id, :message, :staff_inquiry_id)
  end

end
