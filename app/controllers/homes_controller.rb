class HomesController < ApplicationController
  def top
  	@festivals = Festival.where(date: (Date.today)..(Date.today.since(14.days))).order(:date)
  end
end
