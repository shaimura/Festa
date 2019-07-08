class PointsController < ApplicationController

	def create
		point = Point.new(point_params)
	end

	protected

	 def match_params
	  	params.require(:point).permit(:id, :festival_id, :staff_id, :use_point)
	 end
end
