class NewsController < ApplicationController
  def info
  	@docs = Announcement.info
  end

  def pucchasing
  	@docs = Announcement.buy
  end

  def recruit
  	@docs = Announcement.job
  end

  def show
  	@doc = Announcement.find(params[:id])
  end
end
