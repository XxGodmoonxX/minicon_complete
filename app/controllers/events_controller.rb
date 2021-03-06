class EventsController < ApplicationController
  
  def index
    category_id = params[:category_id]
    if category_id
      @events = Event.where("event_category_id = ?", category_id)
    else
      @events = Event.all
    end
    @event_categories = EventCategory.all
  end
  
end