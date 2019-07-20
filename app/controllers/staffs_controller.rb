class StaffsController < ApplicationController

	def show
	    @staff = Staff.find(params[:id])
	    @festivals = Festival.all
    	@matchs = Match.unscoped.where(staff_id: current_staff.id)

	end


	def information
		@staff = current_staff
		@matchs = Match.unscoped.where(staff_id: @staff.id)
		@informations = []
	end

	def edit
		@staff = Staff.find(params[:id])
		if current_staff.id != @staff.id
		end
	end


	def update
	    staff = Staff.find(params[:id])
	    staff.update!(staff_params)
		sign_in(staff, bypass: true)
		redirect_to staff_path(staff.id)
	end

	protected

	def staff_params
	  	params.require(:staff).permit(:id, :name, :postalcode, :address, :telephone, :email, :password, :password_confirmation)
	end


end
