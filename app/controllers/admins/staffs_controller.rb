class Admins::StaffsController < ApplicationController

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
    @organizations = Staff.unscoped.all
  end


  protected

	def staff_params
	  	params.require(:staff).permit(:id, :name, :postalcode, :address, :telephone, :email, :password, :password_confirmation)
	end

end
