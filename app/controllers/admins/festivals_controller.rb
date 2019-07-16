class Admins::FestivalsController < ApplicationController
  def index
  	@festivals = Festival.page(params[:page])
  end
end
