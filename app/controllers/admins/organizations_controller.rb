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


end
