#!!!!!!
#Don't delete this
#!!!!!!

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
   private
  
  # ***********************************************************************
  # Verify if there is a valid user login session.
  # ***********************************************************************
  def confirm_logged_in #had to comment this out in order for the website not to go directly to log in page. 
    #unless session[:user_id]
      #flash[:notice] = "Please login."
      #redirect_to(access_login_path)
    #end
  end
  
end
