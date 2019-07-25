class Admins::StaffInquirysController < ApplicationController
	before_action :authenticate_admin!

  def index
  	@staff_inquirys = StaffInquiry.all.order(id: "DESC")
  end

  def show
  	@staff_inquiry = StaffInquiry.find(params[:id])
  	@staff = @staff_inquiry.staff
  	@staff_reply = StaffReply.new

  end
end
