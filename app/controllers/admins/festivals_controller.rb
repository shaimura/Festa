class Admins::FestivalsController < ApplicationController
  before_action :authenticate_admin!

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
    @festival = Festival.find(params[:id])
    if @festival.update(festival_params)
      flash[:notice] = "変更しました"
      redirect_to admins_festival_path(@festival)
    else
      flash[:alert] = "変更に失敗しました"
      render :edit
    end
  end

  def destroy
      @festival = Festival.find(params[:id])
      if @festival.destroy
        flash[:notice] = "削除しました"
        redirect_to admins_festivals_path
      else
        @organization = @festival.organization
        @informations = Information.where(festival_id: @festival)
        flash[:alert] = "削除に失敗しました"
        render :show
      end
  end


  def name
      @searchs = Festival.unscoped.admin_search_name(params[:admin_search_name]).order(:date)
      @festivals = Festival.all.order(:date)
  end

  protected

  def festival_params
  	params.require(:festival).permit(:id, :name, :organization_id, :area, :address, :web_url, :profile, :fes_image, :staff_status, :date, :traffic, :longitude, :latitude)
  end

end
