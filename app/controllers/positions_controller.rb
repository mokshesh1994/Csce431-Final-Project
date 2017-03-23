class PositionsController < ApplicationController
  
  before_action :confirm_logged_in
  
  # ***********************************************************************
  # Display positions.
  # ***********************************************************************
  def index
    @positions = Position.order(:name)
  end

  def show
    @position = Position.find(params[:id])
  end

  # ***********************************************************************
  # Add a new position.
  # ***********************************************************************
  def new
    @position = Position.new
  end
  
  def create
     @position = Position.new(position_params)

    if @position.save
      redirect_to(positions_path)
    else
      render("new")
    end
  end

  # ***********************************************************************
  # Update a position.
  # ***********************************************************************
  def edit
    @position = Position.find(params[:id])
  end
  
  def update
    @position = Position.find(params[:id])

    if @position.update_attributes(position_params)
      redirect_to(position_path(@position))
    else
      render("edit")
    end
  end

  # ***********************************************************************
  # Delete a position.
  # ***********************************************************************
  def delete
    @position = Position.find(params[:id])
  end
  
  def destroy
    @position = Position.find(params[:id])
    @position.destroy
    redirect_to(positions_path)
  end
  
  # ***********************************************************************
  # Other support methods.
  # ***********************************************************************
  private
  
  def position_params
    params.require(:position).permit(:name, :pos_type)
  end
end
