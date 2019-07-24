class PointsController < ApplicationController

	def create
		point = Point.new(point_params)
		if point.save!
		   flash[:notice] = "ポイント付与しました"
		   redirect_to festival_matchs_path(festival_id: point.festival_id)
		else
			flash[:alert] = "ポイント付与に失敗しました"
			redirect_to festival_matchs_path(festival_id: point.festival_id)
		end
	end

	def update
	    point = Point.find(params[:id])
	    if point.update!(point_params)
	       flash[:notice] = "変更しました"
	       redirect_to festival_matchs_path(festival_id: point.festival_id)
	   else
	   	   flash[:alert] = "変更に失敗しました"
	   	   redirect_to festival_matchs_path(festival_id: point.festival_id)
	  end



	protected

	 def point_params
	  	params.require(:point).permit(:id, :festival_id, :staff_id, :plus_point)
	 end
end
