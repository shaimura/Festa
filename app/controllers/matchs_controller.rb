class MatchsController < ApplicationController

	def create
		@match = Match.new(match_params)
		@match.staff_id = current_staff.id
		if @match.save!
			flash[:notice] = "登録しました"
		   redirect_to festival_path(@match.festival_id)
		else
			flash[:alert] = "登録に失敗しました"
			redirect_to festival_path(@match.festival_id)
		end
	end

	def destroy
		@festival = Festival.find(params[:festival_id])
        @match = current_staff.matchs.find_by(festival_id: @festival.id)
        if @match.destroy
           flash[:notice] = "解約しました"
           redirect_to  festival_path(@festival.id)
       else
       	   flash[:alert] = "登録に失敗しました"
       	   redirect_to  festival_path(@festival.id)
       	end
	end

	def index
		@festival = Festival.find(params[:festival_id])
		@matchs = Match.where(festival_id: @festival)
		@newpoint = Point.new
	end

	protected

	 def match_params
	  	params.require(:match).permit(:id, :festival_id, :staff_id)
	 end
end
