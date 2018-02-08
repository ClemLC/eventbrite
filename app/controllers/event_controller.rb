class EventController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

  end


  private
  def event_params
    params.require(:event).permit(:description, :date, :place)
  end
end
