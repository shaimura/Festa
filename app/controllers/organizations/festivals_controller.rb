class Organizations::FestivalsController < ApplicationController
  def new
  	@festival = Festival.new
  end

  def show
  	 @festival = Festival.find(params[:id])
     @organization = @festival.organization
  end

  def index
  	@festivals = Festival.all
  end

  def create
    festival = Festival.new(festival_params)
    festival.organization = current_organization
    festival.save!
    redirect_to festival_path(festival)
  end

  def edit
  end

  protected

  def festival_params
  	params.require(:festival).permit(:id, :name, :organization_id, :area, :address, :web_url, :profile, :fes_image, :staff_status, :date, :traffic, :longitude, :latitude)
  end

end
