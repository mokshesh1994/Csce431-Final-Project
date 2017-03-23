class SponsorsController < ApplicationController
  
  before_action :confirm_logged_in
  
  # ***********************************************************************
  # Display sponsors.
  # ***********************************************************************
  def index
    @sponsors = Sponsor.order(:name)
  end

  def show
    @sponsor = Sponsor.find(params[:id])
  end

  # ***********************************************************************
  # Add a new sponsor.
  # ***********************************************************************
  def new
    @sponsor = Sponsor.new
  end
  
  def create
     @sponsor = Sponsor.new(sponsor_params)

    if @sponsor.save
      redirect_to(sponsors_path)
    else
      render("new")
    end
  end

  # ***********************************************************************
  # Update a sponsor.
  # ***********************************************************************
  def edit
    @sponsor = Sponsor.find(params[:id])
  end
  
  def update
    @sponsor = Sponsor.find(params[:id])

    if @sponsor.update_attributes(sponsor_params)
      redirect_to(sponsor_path(@sponsor))
    else
      render("edit")
    end
  end

  # ***********************************************************************
  # Delete a sponsor.
  # ***********************************************************************
  def delete
    @sponsor = Sponsor.find(params[:id])
  end
  
  def destroy
    @sponsor = Sponsor.find(params[:id])
    @sponsor.destroy
    redirect_to(sponsors_path)
  end
  
  # ***********************************************************************
  # Other support methods.
  # ***********************************************************************
  private
  
  def sponsor_params
    params.require(:sponsor).permit(:name, :description, :spn_type, :link_to_sec, :link_to_sponsor)
  end
end
