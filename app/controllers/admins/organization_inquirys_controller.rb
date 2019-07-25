class Admins::OrganizationInquirysController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@organization_inquirys = OrganizationInquiry.unscoped.all.order(id: "DESC")
  end

  def show
  	@organization_inquiry = OrganizationInquiry.unscoped.find(params[:id])
  	@organization = @organization_inquiry.organization
  	@organization_reply = OrganizationReply.new

  end

  protected

  def organization_inquiry_params
  	params.require(:organization_inquiry).permit(:id, :orgfnization_id, :message)
  end

end
