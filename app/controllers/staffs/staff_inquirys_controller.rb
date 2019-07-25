class Staffs::StaffInquirysController < ApplicationController
  def new
  	@staff_inquiry = StaffInquiry.new
    @staff = current_staff
  end

  def create
  	@staff_inquiry = StaffInquiry.new(staff_inquiry_params)
    @staff_inquiry.staff = current_staff
    @staff = current_staff
  	if @staff_inquiry.save
      StaffInquiryMailer.staff_send_mail(@staff_inquiry).deliver
      flash[:notice] = "送信しました"
      redirect_to staff_path(@staff)
    else
      flash[:alert] = "送信に失敗しました"
      render :new
    end
  end


  protected

  def staff_inquiry_params
  	params.require(:staff_inquiry).permit(:id, :staff_id, :message)
  end
end
