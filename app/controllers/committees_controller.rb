class CommitteesController < ApplicationController
  
  # ***********************************************************************
  # Display committees.
  # ***********************************************************************
  def index
    @committees = Committee.order(:name)
  end

  def show
    @committee = Committee.find(params[:id])
  end

  # ***********************************************************************
  # Add a new committee.
  # ***********************************************************************
  def new
    @committee = Committee.new
  end
  
  def create
     @committee = Committee.new(committee_params)

    if @committee.save
      redirect_to(committees_path)
    else
      render("new")
    end
  end

  # ***********************************************************************
  # Update a committee.
  # ***********************************************************************
  def edit
    @committee = Committee.find(params[:id])
  end
  
  def update
    @committee = Committee.find(params[:id])

    if @committee.update_attributes(committee_params)
      redirect_to(committee_path(@committee))
    else
      render("edit")
    end
  end

  # ***********************************************************************
  # Delete a committee.
  # ***********************************************************************
  def delete
    @committee = Committee.find(params[:id])
  end
  
  def destroy
    @committee = Committee.find(params[:id])
    @committee.destroy
    redirect_to(committees_path)
  end
  
  # ***********************************************************************
  # Other support methods.
  # ***********************************************************************
  private
  
  def committee_params
    params.require(:committee).permit(:name, :description)
  end
end
