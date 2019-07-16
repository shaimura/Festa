class StaffInquirysController < ApplicationController
  def new
  	@staff_inquiry = StaffInquiry.new
  end

  def create
  	staff_inquiry = StaffInquiry.new(staff_inquiry_params)
  	staff_inquiry.save!
  end

  def staff_inquiry_param
  	params.require(:staff_inquiry).permit(:id, :staff_id, :message)
  end
end
