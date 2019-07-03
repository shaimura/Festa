class FestivalsController < ApplicationController

  def new
  	@festival = Festival.new
  end

  def show
     @festival = Festival.find(params[:id])
    results = Geocoder.search(@festival.address)
    @let = results.lat
    @lon = results.lon


  end

  def index
  end

  def edit
  end

  def create
    @festival = Festival.new(festival_params)
    @festival.organization_id = 1
    @festival.save!
    redirect_to root_path
  end

  def map
    @festival = Festival.find(params[:id])
  	results = Geocoder.search(params[:address])


  	respond_to do |format|
  		format.js
  	end
  end

  protected

  def festival_params
  	params.require(:festival).permit(:id, :name, :organization_id, :area, :address, :web_url, :profile, :image, :staff_status, :date, :traffic)
  end
end
