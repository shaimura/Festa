class Admins::FestivalsController < ApplicationController

  def index
  	@festivals = Festival.unscoped.page(params[:page]).order(:date)
  end

  def show
  	@festival = Festival.unscoped.find(params[:id])
  end
end
