class EventsController < ApplicationController
  
  layout "admin"
  before_action :confirm_logged_in
  
  # ***********************************************************************
  # Display events.
  # ***********************************************************************
  def index
    @events = Event.order(:name)
  end

  def show
    @event = Event.find(params[:id])
  end

   # ***********************************************************************
  # Add a new committee.
  # ***********************************************************************
  def new
    @event = Event.new
  end
  
  def create
     @event = Event.new(event_params)

    if @event.save
      redirect_to(events_path)
    else
      render("new")
    end
  end

  # ***********************************************************************
  # Update an event.
  # ***********************************************************************
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])

    if @event.update_attributes(event_params)
      redirect_to(event_path(@event))
    else
      render("edit")
    end
  end

  # ***********************************************************************
  # Delete an event.
  # ***********************************************************************
  def delete
    @event = Event.find(params[:id])
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to(events_path)
  end
  
  # ***********************************************************************
  # Other support methods.
  # ***********************************************************************
  private
  
  def event_params
    params.require(:event).permit(:name, :link_to_event)
  end
end
