class NewsController < ApplicationController
  def info
  	@news = Announcement.info
  end

  def pucchasing
  	@news = Announcement.buy
  end

  def recruit
  	@news = Announcement.job
  end

  def show
  	@an = Announcement.find(params[:id])
  end
end
