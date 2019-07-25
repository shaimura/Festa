class StaffsController < ApplicationController
	before_action :authenticate_staff!

	def show
	    @staff = Staff.find(params[:id])
	    if current_staff.id != @staff.id
	    	redirect_to root_path
	    end
	    @festivals = Festival.all
    	@matchs = Match.unscoped.where(staff_id: current_staff.id)
	end


	def information
		@staff = current_staff
		@matchs = Match.unscoped.where(staff_id: @staff.id)
		@subinformations = []

		@matchs.each do |matching|
			matching.festival.informations.each do |information|
				@subinformations.push(information)
			end
		end

		 @informations = @subinformations.sort.reverse

	end

	def edit
		@staff = Staff.find(params[:id])
	end


	def update
	    @staff = Staff.find(params[:id])
	    if @staff.update(staff_params)
			sign_in(@staff, bypass: true)
			flash[:notice] = "変更しました"
			redirect_to staff_path(@staff.id)
		else
			flash[:alert] = "変更に失敗しました"
			render :edit
	    end
	end

	protected

	def staff_params
	  	params.require(:staff).permit(:id, :name, :postalcode, :address, :telephone,:email, :password, :password_confirmation)
	end


end
