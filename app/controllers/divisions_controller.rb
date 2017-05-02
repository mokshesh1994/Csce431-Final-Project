class DivisionsController < ApplicationController
  
  layout "admin"
  before_action :confirm_logged_in
  
  # ***********************************************************************
  # Display divisions.
  # ***********************************************************************
  def index
    @divisions = Division.order(:id)
  end

  def show
     @division = Division.find(params[:id])
  end
  
  # ***********************************************************************
  # Add a new division.
  # ***********************************************************************
  def new
    @division = Division.new
  end
  
  def create
     @division = Division.new(division_params)

    if @division.save
      redirect_to(divisions_path)
    else
      render("new")
    end
  end
  
  # ***********************************************************************
  # Update a division.
  # ***********************************************************************
  def edit
    @division = Division.find(params[:id])
  end
  
  def update
    @division = Division.find(params[:id])

    if @division.update_attributes(division_params)
      redirect_to(division_path(@division))
    else
      render("edit")
    end
  end
  
  # ***********************************************************************
  # Delete a division.
  # ***********************************************************************
  def delete
    @division = Division.find(params[:id])
  end
  
  def destroy
    @division = Division.find(params[:id])
    @division.destroy
    redirect_to(divisions_path)
  end
  
  # ***********************************************************************
  # Other support methods.
  # ***********************************************************************
  private
  
  def division_params
    params.require(:division).permit(:name, :description)
  end
end