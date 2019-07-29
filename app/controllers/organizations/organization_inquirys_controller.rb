class Organizations::OrganizationInquirysController < ApplicationController
  before_action :authenticate_organization!

  def new
  	@organization_inquiry = OrganizationInquiry.new
    @organization = current_organization
    if current_organization.id != @organization.id
       redirect_to root_path
    end
  end

  def create
  	@organization_inquiry = OrganizationInquiry.new(organization_inquiry_params)
    @organization_inquiry.organization = current_organization
    @organization = current_organization
  	if @organization_inquiry.save
       OrganizationInquiryMailer.organization_send_mail(@organization_inquiry).deliver
       flash[:notice] = "送信しました"
       redirect_to organization_path(@organization)
    else
      flash[:alert] = "送信に失敗しました"
      render :new
    end

  end


  protected

  def organization_inquiry_params
  	params.require(:organization_inquiry).permit(:id, :orgfnization_id, :message)
  end

end
