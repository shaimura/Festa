class FestivalsController < ApplicationController

  def new
  	@festival = Festival.new
  end

  def show
  end

  def index
  end

  def edit
  end

  def create
    @festival = Festival.new
    @festival.organization_id = 1
    @festival.save
    redirect_to root_path
  end

  def map
  	results = Geocoder.search(params[:address])
  	@latlng = results.first.coordinates


  	respond_to do |format|
  		format.js
  	end
  end

  protected

  def festival_params
  	params.require(:festival).permit(:name, :organization_id, :area, :address, :web_url, :profile, :fes_imag, :staff_status, :longitude, :latitude)
  end
end
