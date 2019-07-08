class StaffsController < ApplicationController
  def new
  	@staff = Staff.new
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def edit
  end

  def create
  	staff = Staff.new(staff_params)
  	staff.user = current_user
    staff.save!
    redirect_to staff_path(staff)
  end

  protected

  def staff_params
  	params.require(:staff).permit(:id, :user_id, :last_name, :first_name, :postalcode, :address)
  end
end
