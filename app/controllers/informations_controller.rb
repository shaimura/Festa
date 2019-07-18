class InformationsController < ApplicationController

	def show
		@information = Information.find(params[:id])
	end

	def create
		information = Information.new(information_params)
		information.save!
		redirect_to organizations_festival_path(@information.festival)
	end


	def information_params
  	params.require(:information).permit(:id, :festival_id, :message)
  end
end
