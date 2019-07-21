class Admins::OrganizationsController < ApplicationController

  def index
  	@organizations = Organization.unscoped.all
  end

  def show
  	@organization = Organization.unscoped.find(params[:id])
    @festivals = Festival.unscoped.where(organization_id: current_organization.id)
  end

  def edit
    @organization = Organization.unscoped.find(params[:id])
  end

  def destroy
		@organization = Organization.find(params[:id])
		@organization.destroy
		redirect_to admins_organizations_path
  end

  def festivals
    @organization = Organization.unscoped.find(params[:organization_id])
    @festivals = Festival.where(organization_id: @organization.id).order(:date)
  end

  protected

  def organization_params
      params.require(:organization).permit(:id, :name, :postalcode, :address, :telephone, :email, :password, :password_confirmation)
  end



end
