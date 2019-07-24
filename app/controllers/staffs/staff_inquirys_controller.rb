class Staffs::StaffInquirysController < ApplicationController
  def new
  	@staff_inquiry = StaffInquiry.new
    @staff = current_staff
  end

  def create
  	@staff_inquiry = StaffInquiry.new(staff_inquiry_params)
    @staff_inquiry.staff = current_staff
  	@staff_inquiry.save!
    StaffInquiryMailer.staff_send_mail(@staff_inquiry).deliver
  end


  protected

  def staff_inquiry_params
  	params.require(:staff_inquiry).permit(:id, :staff_id, :message)
  end
end
