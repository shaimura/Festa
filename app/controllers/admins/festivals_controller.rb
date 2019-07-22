class Admins::FestivalsController < ApplicationController

  def index
  	@festivals = Festival.all.order(:date)
  end

  def show
  	 @festival = Festival.unscoped.find(params[:id])
     @organization = @festival.organization
     @informations = Information.where(festival_id: @festival)
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
      redirect_to admins_organization_festivals_path(organization_id: festival.organization.id)
  end

  protected

  def festival_params
  	params.require(:festival).permit(:id, :name, :organization_id, :area, :address, :web_url, :profile, :fes_image, :staff_status, :date, :traffic, :longitude, :latitude)
  end

end
