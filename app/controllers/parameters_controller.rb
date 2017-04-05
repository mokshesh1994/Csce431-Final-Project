class ParametersController < ApplicationController
  
  layout "admin"
  
  before_action :add_parameters_unique_record
  
  # ***********************************************************************
  # Display committees.
  # ***********************************************************************
  def index
    @parameters = Parameter.all
  end

  def show
    @parameter = Parameter.find(params[:id])
  end

  # ***********************************************************************
  # Add a new committee.
  # ***********************************************************************
  def new
  end
  
  def create
  end

  # ***********************************************************************
  # Update a committee.
  # ***********************************************************************
  def edit
    @parameter = Parameter.find(params[:id])
  end
  
  def update
    @parameter = Parameter.find(params[:id])

    if @parameter.update_attributes(parameter_params)
      redirect_to(parameter_path(@parameter))
    else
      render("edit")
    end
  end

  # ***********************************************************************
  # Delete a committee.
  # ***********************************************************************
  def delete
  end
  
  def destroy
  end
  
  private
  
  def parameter_params
    params.require(:parameter).permit(:main_image_1, :main_image_1_title, :main_image_1_subtitle, 
                                      :main_image_2, :main_image_2_title, :main_image_2_subtitle,
                                      :main_image_3, :main_image_3_title, :main_image_3_subtitle,
                                      :main_image_4, :main_image_4_title, :main_image_4_subtitle,
                                      :main_image_5, :main_image_5_title, :main_image_5_subtitle,
                                      :main_image_6, :main_image_6_title, :main_image_6_subtitle,
                                      :about_title, :about_description,
                                      :committees_title, :committees_description,
                                      :sponsors_title, :sponsors_description,
                                      :events_title, :events_description,
                                      :exboard_title, :exboard_description,
                                      :excouncil_title, :excouncil_description,
                                      :login_title,
                                      :members_title, :members_description, :members_link, :members_footer,
                                      :students_title, :students_description, :students_link, :students_footer,
                                      :companies_title, :companies_description, :companies_link, :companies_footer,
                                      :contactus_title, :contactus_header, :contactus_address, :contactus_phone, :contactus_url,
                                      :calendar_title, :calendar_description)
  end

  # ***********************************************************************
  # The Parameters table has only one record which is automatically added
  # by the application. Such a record can only be updated, not deleted.
  # This method checks if there is one record. If not, a blank record is added.
  # ***********************************************************************
  def add_parameters_unique_record
    parameter = Parameter.first
    
    unless parameter
      parameter = Parameter.new
      parameter.save
    end
  end
  
end
