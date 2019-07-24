class Admins::OrganizationRepliesController < ApplicationController

  def create
  	@organization_reply = OrganizationReply.new(organization_reply_params)
    @organization_reply.admin = current_admin
    @organization_inquiry = @organization_reply.organization_inquiry
  	if @organization_reply.save!
      @organization_inquiry.inquiri_status = 1
      @organization_inquiry.save!
      OrganizationReplyMailer.organization_reply_mail(@organization_reply).deliver
      flash[:notice] = "送信しました"
      redirect_to admins_organization_inquiry_path(@organization_inquiry)
    else
      flash[:alert] = "送信に失敗しました"
      redirect_to admins_organization_inquiry_path(@organization_inquiry)
    end
  end

  protected

  def organization_reply_params
  	params.require(:organization_reply).permit(:id, :admin_id, :message, :organization_inquiry_id)
  end
end
