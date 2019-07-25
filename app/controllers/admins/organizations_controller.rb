class Admins::OrganizationsController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@organizations = Organization.unscoped.all
  end

  def show
  	@organization = Organization.unscoped.find(params[:id])
    @festivals = Festival.unscoped.where(organization_id: @organization.id)
  end

  def edit
    @organization = Organization.unscoped.find(params[:id])
  end

    def update
      @organization = Organization.unscoped.find(params[:id])
      if @organization.update(organization_params)
        flash[:notice] = "変更しました"
        redirect_to organization_path(@organization.id)
      else
        flash[:alert] = "変更に失敗しました"
        render :edit
      end
  end

  def destroy
		@organization = Organization.find(params[:id])
		if @organization.destroy
      flash[:notice] = "削除しました"
		redirect_to admins_organizations_path
    else
      @festivals = Festival.unscoped.where(organization_id: @organization.id)
      flash[:alert] = "削除に失敗しました"
      render :show
    end
  end

  def search
    @searchs = Organization.search_organization_name(params[:search_organization_name])
    @organizations = Organization.unscoped.all
  end

  def festivals
    @organization = Organization.unscoped.find(params[:organization_id])
    @festivals = Festival.where(organization_id: @organization.id).order(:date)
  end

  protected

  def organization_params
      params.require(:organization).permit(:id, :name, :postalcode, :address, :telephone, :email, :password, :password_confirmation)
  end



end
