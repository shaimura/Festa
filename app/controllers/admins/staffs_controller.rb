class Admins::StaffsController < ApplicationController

  def index
  	@staffs = Staff.unscoped.all
  end

  def show
  	@staff = Staff.unscoped.find(params[:id])
  end

  def edit
    @staff = Staff.unscoped.find(params[:id])
  end

  def destroy
		@staff = Staff.find(params[:id])
		@staff.destroy
		redirect_to admins_staffs_path
  end


  protected

	def staff_params
	  	params.require(:staff).permit(:id, :name, :postalcode, :address, :telephone, :email, :password, :password_confirmation)
	end

end
