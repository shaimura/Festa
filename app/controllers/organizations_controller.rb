class OrganizationsController < ApplicationController
  def show
  	@organization = Organization.find(params[:id])
  	@festivals = Festival.where(organization_id: current_organization.id)
  end

end
