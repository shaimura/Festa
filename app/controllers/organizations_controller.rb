class OrganizationsController < ApplicationController
  before_action :authenticate_organization!

  def show
  	@organization = Organization.find(params[:id])
    if current_organization.id != @organization.id
      redirect_to root_path
    end
  	@festivals = Festival.where(organization_id: current_organization.id)
  end


  def edit
  	@organization = Organization.find(params[:id])
    if current_organization.id != @organization.id
       redirect_to root_path
    end
  end

  def update
	    @organization = Organization.find(params[:id])
	    if @organization.update(organization_params)
        sign_in(@organization, bypass: true)
        flash[:notice] = "変更しました"
        redirect_to organization_path(@organization.id)
      else
        flash[:alert] = "変更に失敗しました"
        render :edit
      end
	end

	protected

	def organization_params
	  	params.require(:organization).permit(:id, :name, :postalcode, :address, :telephone, :email, :password, :password_confirmation)
	end

end
