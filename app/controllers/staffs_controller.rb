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
	  	params.require(:staff).permit(:id, :user_id, :last_name, :first_name, :postalcode, :address)
	end


end
