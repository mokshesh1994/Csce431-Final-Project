class SponsorsController < ApplicationController
  
  def index
    @sponsors = Sponsor.order(:name)
  end

  def show
    @sponsor = Sponsor.find(params[:id])
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
