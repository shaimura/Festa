class InformationsController < ApplicationController
	before_action :authenticate_organization!


	def create
		@festival = Festival.find(params[:festival_id])
		@information = Information.new(information_params)
		@information.festival = @festival
		if @information.save
		   flash[:notice] = "登録しました"
		   redirect_to organizations_festival_path(@festival)
		else
		   flash[:alert] = "登録に失敗しました"
		   redirect_to organizations_festival_path(@festival)
		end

	end


	protected

	def information_params
  	  params.require(:information).permit(:id, :festival_id, :message)
    end
end
