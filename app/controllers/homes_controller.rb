class HomesController < ApplicationController
  def top
  	@festivals = Festival.all
  	@festival_date = Festival.where(date: (Date.today)..(Date.today.since(14.days)))
  end
end
