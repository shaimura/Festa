class Admins::FestivalsController < ApplicationController
  def index
  	@festivals = Festival.unscoped.page(params[:page]).order(:date)
  end
end
