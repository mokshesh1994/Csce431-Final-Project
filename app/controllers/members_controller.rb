class MembersController < ApplicationController
  def index
    @members = Member.order(:name)
  end

  def show
    @member = Member.find(params[:id])
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
