class EventController < ApplicationController
  def index
  	@events = Event.where(publish: true).reverse_order.page(params[:page]).per(8)
  end

  def show
  	@event = Event.find(params[:id])
  end
end
