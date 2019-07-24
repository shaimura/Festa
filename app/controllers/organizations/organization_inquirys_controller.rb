class Organizations::OrganizationInquirysController < ApplicationController

  def new
  	@organization_inquiry = OrganizationInquiry.new
    @organization = current_organization
  end

  def create
  	@organization_inquiry = OrganizationInquiry.new(organization_inquiry_params)
    @organization_inquiry.organization = current_organization
  	if @organization_inquiry.save!
       OrganizationInquiryMailer.organization_send_mail(@organization_inquiry).deliver
       flash[:notice] = "送信しました"
       redirect_to organization_path(@organization_inquiry.organization)
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
