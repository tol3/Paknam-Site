class EventController < ApplicationController
  def index
  	@events = Event.where(publish: true).reverse_order
  end

  def show
  	@event = Event.find(params[:id])
  end
end
