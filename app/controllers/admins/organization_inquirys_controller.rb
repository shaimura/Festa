class Admins::OrganizationInquirysController < ApplicationController
  def index
  	@organization_inquirys = OrganizationInquiry.all.order(id: "DESC")
  end

  def show
  	@organization_inquiry = OrganizationInquiry.find(params[:id])
  	@organization = @organization_inquiry.organization
  	@organization_reply = OrganizationReply.new

  end
end
