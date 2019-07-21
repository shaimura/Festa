class Admins::OrganizationRepliesController < ApplicationController

  def create
  	@organization_reply = OrganizationReply.new(organization_reply_params)
    @organization_reply.admin = current_admin
  	@organization_reply.save!
    @organization_inquiry = @organization_reply.organization_inquiry
    @organization_inquiry.inquiri_status = 1
    @organization_inquiry.save!
    OrganizationReplyMailer.organization_reply_mail(@organization_reply).deliver
    redirect_to admins_organization_inquirys_path
  end

  def show

  end

  protected

  def organization_reply_params
  	params.require(:organization_reply).permit(:id, :admin_id, :message, :organization_inquiry_id)
  end
end
