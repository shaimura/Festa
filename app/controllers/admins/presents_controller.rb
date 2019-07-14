class Admins::PresentsController < ApplicationController


  def new
  	@present = Present.new
  end

  def show
  	
  end

  def create
  	present = Present.new(present_params)
  	present.save!
  	redirect_to present_path(present)
  end

  protected

  def present_params
  	params.require(:present).permit(:id, :present, :present_image)
  end



end
