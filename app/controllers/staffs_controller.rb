class StaffsController < ApplicationController
  def new
  	@staff = Staff.new
  end

  def show
    @staff = Staff.find(params[:id])
    @festivals = Festival.all
    @festival_record = Festival.count

    @festival_dates = Festival.pluck(:date)
  end

  def edit
  end

  def create
  	staff = Staff.new(staff_params)
  	staff.user = current_user
    staff.save!
    redirect_to staff_path(staff)
  end

  def update
    staff = Staff.find(params[:id])
    staff.update!
  end

  protected

  def staff_params
  	params.require(:staff).permit(:id, :user_id, :last_name, :first_name, :postalcode, :address)
  end
end
