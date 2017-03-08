class EventsController < ApplicationController
  
  def index
    @events = Event.order(:name)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
end
