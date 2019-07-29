class Organizations::FestivalsController < ApplicationController
  before_action :authenticate_organization!

  def new
  	@festival = Festival.new
  end

  def show
  	 @festival = Festival.find(params[:id])
     @organization = @festival.organization
    if current_organization.id != @organization.id
       redirect_to root_path
    end
     @information = Information.new
     @informations = Information.where(festival_id: @festival)
  end

  def index
  	@festivals = Festival.where(organization_id: current_organization.id).order(:date)
  end

  def create
    @festival = Festival.new(festival_params)
    @festival.organization = current_organization
    if @festival.save
      flash[:notice] = "登録しました"
      redirect_to organizations_festival_path(@festival)
    else
      flash[:alert] = "登録に失敗しました"
      render :new
    end
  end

  def edit
    @festival = Festival.find(params[:id])
    @organization = @festival.organization
    if current_organization.id != @organization.id
       redirect_to root_path
    end
  end

  def update
    @festival = Festival.find(params[:id])
    if @festival.update(festival_params)
      flash[:notice] = "変更しました"
      redirect_to organizations_festival_path(@festival)
    else
      flash[:alert] = "変更に失敗しました"
      render :edit
    end
  end

  def destroy
      @festival = Festival.find(params[:id])
      if @festival.destroy
         flash[:notice] = "削除しました"
         redirect_to organizations_festivals_path
       else
        @organization = @festival.organization
        @information = Information.new
        @informations = Information.where(festival_id: @festival)
        flash[:alert] = "削除に失敗しました"
        render :show
      end
  end

  protected

  def festival_params
  	params.require(:festival).permit(:id, :name, :organization_id, :area, :address, :web_url, :profile, :fes_image, :staff_status, :date, :traffic, :longitude, :latitude)
  end

end
