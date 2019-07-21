class OrganizationsController < ApplicationController
  def show
  	@organization = Organization.find(params[:id])
  	@festivals = Festival.where(organization_id: current_organization.id)
  end


  def edit
  	@organization = Organization.find(params[:id])
  end

  def update
	    organization = Organization.find(params[:id])
	    organization.update!(organization_params)
      sign_in(organization, bypass: true)
      redirect_to organization_path(organization.id)
	end

	protected

	def organization_params
	  	params.require(:organization).permit(:id, :name, :postalcode, :address, :telephone, :email, :password, :password_confirmation)
	end

end
