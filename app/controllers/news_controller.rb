class NewsController < ApplicationController
  def info
  	@docs = Announcement.info.page(params[:page]).per(10)
  end

  def pucchasing
  	@docs = Announcement.buy.page(params[:page]).per(10)
  end

  def recruit
  	@docs = Announcement.job.page(params[:page]).per(10)
  end

  def show
  	@doc = Announcement.find(params[:id])
  end
end
