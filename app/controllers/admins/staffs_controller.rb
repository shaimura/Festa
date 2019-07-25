class Admins::StaffsController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@staffs = Staff.unscoped.all
  end

  def show
  	@staff = Staff.unscoped.find(params[:id])
    @festivals = Festival.all
    @matchs = Match.unscoped.where(staff_id: current_staff.id)
  end

  def edit
    @staff = Staff.unscoped.find(params[:id])
  end

    def update
      @staff = Staff.unscoped.find(params[:id])
      if @staff.update(staff_params)
      flash[:notice] = "変更しました"
      redirect_to admins_staff_path(@staff.id)
    else
      flash[:alert] = "変更に失敗しました"
      render :edit
      end
  end

  def destroy
		@staff = Staff.find(params[:id])
		if @staff.destroy
      flash[:notice] = "削除しました"
		  redirect_to admins_staffs_path
    else
      flash[:alert] = "削除に失敗しました"
      render :show
    end
  end

  def search
    @searchs = Staff.search_staff_name(params[:search_staff_name])
    @staffs = Staff.unscoped.all
  end


  protected

	def staff_params
	  	params.require(:staff).permit(:id, :name, :postalcode, :address, :telephone, :email, :password, :password_confirmation)
	end

end
