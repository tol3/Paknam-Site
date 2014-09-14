class EventController < ApplicationController
  def index
  	@events = Event.where(publish: true)
  end

  def show
  	@event = Event.find(params[:id])
  end
end
