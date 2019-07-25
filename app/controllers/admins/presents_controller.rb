class Admins::PresentsController < ApplicationController
  before_action :authenticate_admin!


  def new
  	@present = Present.new
    @presents = Present.all
  end

  def edit
    @present = Present.find(params[:id])
  end

  def create
  	@present = Present.new(present_params)
  	if @present.save
      flash[:notice] = "登録しました"
      redirect_to new_admins_present_path
    else
      @presents = Present.all
      flash[:alert] = "登録に失敗しました"
      render :new
    end
  end

  def update
    @present = Present.find(params[:id])
    if present.update!(present_params)
      flash[:notice] = "変更しました"
      redirect_to new_admins_present_path
    else
      flash[:alert] = "変更に失敗しました"
      render :new
    end
  end

  protected

  def present_params
  	params.require(:present).permit(:id, :present, :present_image, :use_point)
  end



end
