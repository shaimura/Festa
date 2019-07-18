class StaffsController < ApplicationController

	def show
	    @staff = Staff.find(params[:id])
	    @festivals = Festival.all
    	@matchs = Match.unscoped.where(staff_id: current_staff.id)

	end


	def information
		@staff = current_staff
		@matchs = Match.unscoped.where(staff_id: @staff.id)
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
