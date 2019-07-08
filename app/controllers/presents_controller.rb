class PresentsController < ApplicationController
  def new
  	@present = Present.new
  end

  def show
  	@present = Present.find(params[:id])
  end

  def index
  	@presents = Present.all
  end

  def create
  	present = Present.new(present_params)
  	present.save!
  	redirect_to present_path(present)
  end

  protected

  def present_params
  	params.require(:present).permit(:id, :present, :present_image, :use_point)
  end
end
