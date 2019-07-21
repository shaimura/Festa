class Admins::OrganizationInquirysController < ApplicationController
  def index
  	@organization_inquirys = OrganizationInquiry.all.order(id: "DESC")
  end

  def show
  	@organization_inquiry = OrganizationInquiry.find(params[:id])
  	@organization = @organization_inquiry.organization
  	@organization_reply = OrganizationReply.new

  end

  protected

  def organization_inquiry_params
  	params.require(:organization_inquiry).permit(:id, :orgfnization_id, :message)
  end

end
