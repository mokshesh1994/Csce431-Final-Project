class DivisionsController < ApplicationController

  def index
    @divisions = Division.order(:name)
  end

  def show
     @division = Division.find(params[:id])
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