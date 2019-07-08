class MatchsController < ApplicationController

	def create
		@match = Match.new(match_params)
		@match.staff_id = current_user.staff.id
		@match.save!
		redirect_to staff_path(@match.staff_id)
	end

	protected

	 def match_params
	  	params.require(:match).permit(:id, :festival_id, :staff_id)
	 end
end
