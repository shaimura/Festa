class StaffsController < ApplicationController
  def new
  	@staff = Staff.new
  end

  def show
  end

  def edit
  end

  def creste
  	@staff = Staff.new(staff_params)
  	@staff.user = current_user
  end

  protected

  def staff_params
  	params.require(:staff).permit(:id, :user_id)
  end
end
