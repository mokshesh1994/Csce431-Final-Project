class MembersController < ApplicationController
  
  layout "admin"
  before_action :confirm_logged_in
  
  # ***********************************************************************
  # Display members.
  # ***********************************************************************
  def index
    @members = Member.order(:name)
  end

  def show
    @member = Member.find(params[:id])
  end

  # ***********************************************************************
  # Add a new member.
  # ***********************************************************************
  def new
    @member = Member.new
  end
  
  def create
     @member = Member.new(member_params)

    if @member.save
      redirect_to(members_path)
    else
      render("new")
    end
  end

  # ***********************************************************************
  # Update a member.
  # ***********************************************************************
  def edit
    @member = Member.find(params[:id])
    #@position = Position.where(params[:id])
  end
  
  def update
    @member = Member.find(params[:id])

    if @member.update_attributes(member_params)
      redirect_to(member_path(@member))
    else
      render("edit")
    end
  end

  # ***********************************************************************
  # Delete a member.
  # ***********************************************************************
  def delete
    @member = Member.find(params[:id])
  end
  
  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to(members_path)
  end

  # ***********************************************************************
  # Other support methods.
  # ***********************************************************************
  private
  
  def member_params
    params.require(:member).permit(:name, :email, :password, :major, 
    :grad_year, :member_since, :hometown, :pro_interests, :position_id, :division_id, :image)
  end
end
