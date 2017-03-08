class PositionsController < ApplicationController
  
  def index
    @positions = Position.order(:name)
  end

  def show
    @position = Position.find(params[:id])
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
