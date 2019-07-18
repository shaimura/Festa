class StaffsController < ApplicationController

	def show
    @staff = Staff.find(params[:id])
    @festivals = Festival.all
    @matchs = Match.where(staff_id: current_staff.id)

	end

	 def edit
	 end


	def update
	    staff = Staff.find(params[:id])
	    staff.update!
	end

	protected

	def staff_params
	  	params.require(:staff).permit(:id, :name, :postalcode, :address, :telephone, :email, :password, :password_confirmation)
	end


end
