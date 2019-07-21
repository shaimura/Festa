class Admins::PresentsController < ApplicationController


  def new
  	@present = Present.new
    @presents = Present.all
  end

  def edit
    @present = Present.find(params[:id])
  end

  def create
  	present = Present.new(present_params)
  	present.save!
  	redirect_to admins_present_path(present)
  end

  def update
    present = Present.find(params[:id])
    present.update!(present_params)
    redirect_to new_admins_present_path
  end

  protected

  def present_params
  	params.require(:present).permit(:id, :present, :present_image, :use_point)
  end



end
