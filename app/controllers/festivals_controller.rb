class FestivalsController < ApplicationController

  def new
  	@festival = Festival.new
  end

  def show
     @festival = Festival.find(params[:id])
     @organization = @festival.organization

  end

  def index
  end

  def edit
  end

  def create
    @festival = Festival.new(festival_params)
    @festival.organization = current_organization
    @festival.save!
    redirect_to root_path
  end


  protected

  def festival_params
  	params.require(:festival).permit(:id, :name, :organization_id, :area, :address, :web_url, :profile, :image, :staff_status, :date, :traffic, :longitude, :latitude)
  end
end
