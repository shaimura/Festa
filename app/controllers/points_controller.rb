class PointsController < ApplicationController

	def create
		point = Point.new(point_params)
		point.save!
		staff = point.staff
		staff.total_point += point.plus_point
		staff.remaining_point += point.plus_point
		staff.save!
		redirect_to festival_matchs_path(festival_id: point.festival_id)
	end

	def update
	    point = Point.find(params[:id])
	    point.update!(point_params)
	    redirect_to festival_matchs_path(festival_id: point.festival_id)
	  end



	protected

	 def point_params
	  	params.require(:point).permit(:id, :festival_id, :staff_id, :plus_point)
	 end
end
