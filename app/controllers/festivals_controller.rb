class FestivalsController < ApplicationController

  def new
  	@festival = Festival.new
  end

  def show
     @festival = Festival.find(params[:id])
     @organization = @festival.organization

     @matching = Match.new

  end

  def index
      @search = Festival.search_name(params[:search_name])
      @festivals = Festival.all
  end

  def area
    @search = Festival.search_area(params[:search_area])
    @festivals = Festival.all
  end

  def date
    @search = Festival.search_date(params[:search_date])
    @festivals = Festival.all
  end

  def edit
  end

  def create
    festival = Festival.new(festival_params)
    festival.organization = current_organization
    festival.save!
    redirect_to festival_path(festival)
  end


  protected

  def festival_params
  	params.require(:festival).permit(:id, :name, :organization_id, :area, :address, :web_url, :profile, :fes_image, :staff_status, :date, :traffic, :longitude, :latitude)
  end
end
