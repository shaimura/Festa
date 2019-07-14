class FestivalsController < ApplicationController


  def show
     @festival = Festival.find(params[:id])
     @organization = @festival.organization

     @matching = Match.new

  end

  def index
      @festivals = Festival.where('date >= ?', Date.today)
  end

  def etc
      @searchs = Festival.search_etc(params[:search_etc])
      @festivals = Festival.where('date >= ?', Date.today)
  end

  def area
    @searchs = Festival.search_area(params[:search_area])
    @festivals = Festival.where('date >= ?', Date.today)
  end

  def date
    @searchs = Festival.search_date(params[:search_date])
    @date = Festival.find_by(params[:search_date])
    @festivals = Festival.where('date >= ?', Date.today)

  end

  def edit
  end



  protected

  def festival_params
  	params.require(:festival).permit(:id, :name, :organization_id, :area, :address, :web_url, :profile, :fes_image, :staff_status, :date, :traffic, :longitude, :latitude)
  end
end
