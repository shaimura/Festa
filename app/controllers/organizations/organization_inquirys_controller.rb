class Organizations::OrganizationInquirysController < ApplicationController

  def new
  	@organization_inquiry = OrganizationInquiry.new
    @organization = current_organization
  end

  def create
  	@organization_inquiry = OrganizationInquiry.new(organization_inquiry_params)
    @organization_inquiry.organization = current_organization
  	@organization_inquiry.save!
    OrganizationInquiryMailer.organization_send_mail(@organization_inquiry).deliver
  end

  def show

  end

  def organization_inquiry_params
  	params.require(:organization_inquiry).permit(:id, :orgfnization_id, :message)
  end

end
