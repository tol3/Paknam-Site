class EventController < ApplicationController
  def index
  	@events = Event.on
  end

  def show
  	@event = Event.find(params[:id])
  end
end
