class Organizations::FestivalsController < ApplicationController

  def new
  	@festival = Festival.new
  end

  def show
  	 @festival = Festival.find(params[:id])
     @organization = @festival.organization
     @information = Information.new
     @informations = Information.where(festival_id: @festival)
  end

  def index
  	@festivals = Festival.where(organization_id: current_organization.id).order(:date)
  end

  def create
    festival = Festival.new(festival_params)
    festival.organization = current_organization
    festival.save!
    redirect_to organizations_festival_path(festival)
  end

  def edit
    @festival = Festival.find(params[:id])
  end

  def update
    festival = Festival.find(params[:id])
    festival.update!(festival_params)
    redirect_to organizations_festival_path(festival)
  end

  def destroy
      festival = Festival.find(params[:id])
      festival.destroy
      redirect_to organizations_festivals_path
  end

  protected

  def festival_params
  	params.require(:festival).permit(:id, :name, :organization_id, :area, :address, :web_url, :profile, :fes_image, :staff_status, :date, :traffic, :longitude, :latitude)
  end

end
