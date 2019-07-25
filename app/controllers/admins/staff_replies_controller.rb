class Admins::StaffRepliesController < ApplicationController
  before_action :authenticate_admin!

  def create
  	@staff_reply = StaffReply.new(staff_reply_params)
    @staff_reply.admin = current_admin
  	if @staff_reply.save
        @staff_inquiry = @staff_reply.staff_inquiry
        @staff_inquiry.inquiri_status = 1
        @staff_inquiry.save
        StaffReplyMailer.staff_reply_mail(@staff_reply).deliver
        flash[:notice] = "送信しました"
        redirect_to admins_staff_inquiry_path(@staff_inquiry)
    else
        flash[:alert] = "送信に失敗しました"
        redirect_to admins_staff_inquiry_path(@staff_inquiry)
    end
  end

  protected


  def staff_reply_params
  	params.require(:staff_reply).permit(:id, :admin_id, :message, :staff_inquiry_id)
  end

end
