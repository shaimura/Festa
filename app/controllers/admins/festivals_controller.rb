class Admins::FestivalsController < ApplicationController
  def index
  	@festivals = Festival.page(params[:page]).order(:date)
  end
end
