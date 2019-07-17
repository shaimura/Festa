class MatchsController < ApplicationController

	def create
		@match = Match.new(match_params)
		@match.staff_id = current_staff.id
		@match.save!
		redirect_to festival_path(@match.festival_id)
	end

	def destroy
		@festival = Festival.find(params[:festival_id])
        @match = current_staff.matchs.find_by(festival_id: @festival.id)
        @match.destroy
        redirect_to  festival_path(@festival.id)
	end

	protected

	 def match_params
	  	params.require(:match).permit(:id, :festival_id, :staff_id)
	 end
end
