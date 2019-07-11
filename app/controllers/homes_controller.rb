class HomesController < ApplicationController
  def top
  	@festivals = Festival.all
  	@festival_date = Festival.where(date: (Date.today)..(Date.today.end_of_month))
  end
end
