class FestivalsController < ApplicationController


  def show
     @festival = Festival.find(params[:id])
     @organization = @festival.organization

     @matching = Match.new

  end

  def index
      @festivals = Festival.where('date >= ?', Date.today).page(params[:page]).order(:date)
  end

  def name
      @searchs = Festival.search_name(params[:search_name]).page(params[:page]).where('date >= ?', Date.today).order(:date)
      @festivals = Festival.where('date >= ?', Date.today).page(params[:page]).order(:date)
  end

  def area
    @searchs = Festival.search_area(params[:search_area]).page(params[:page]).where('date >= ?', Date.today).order(:date)
    @festivals = Festival.where('date >= ?', Date.today).page(params[:page]).order(:date)
  end

  def date
    @searchs = Festival.search_date(params[:search_date]).page(params[:page]).order(:date)
    @festivals = Festival.where('date >= ?', Date.today).page(params[:page]).order(:date)

  end

  def edit
  end



  protected

  def festival_params
  	params.require(:festival).permit(:id, :name, :organization_id, :area, :address, :web_url, :profile, :fes_image, :staff_status, :date, :traffic, :longitude, :latitude)
  end
end
