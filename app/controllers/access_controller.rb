class AccessController < ApplicationController
  
  layout "admin"
  
  before_action :add_initial_user
  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  #skip_before_action :verify_authenticity_token
  # ***********************************************************************
  # Display menu items.
  # ***********************************************************************
  def menu
   @sponsors = Sponsor.order(:name)
  end

  # ***********************************************************************
  # Display login form.
  # ***********************************************************************
  def login
  end
   # ***********************************************************************
  # Index
  # ***********************************************************************
  def index
    @sponsors = Sponsor.order(:name)
    @events = Event.order(params[:id])
  end
  # ***********************************************************************
  # Validate user credentials..
  # ***********************************************************************
  def attempt_login
    if params[:email].present? && params[:password].present?
      found_user = Member.where(:email => params[:email]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    
    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:notice] = "You are logged in."
      redirect_to(admin_path)
    else
      flash.now[:notice] = "Invalid email/password combination."
      render("login")
    end
  end
  
  # ***********************************************************************
  # Terminate user login session.
  # ***********************************************************************
  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out."
    redirect_to(access_login_path)
  end
  
  private
  
  # ***********************************************************************
  # Add initial user, initial position and initial division.
  # An initial user account is required (with initial position and division),
  # otherwise it is not possible to login.
  # ***********************************************************************
  def add_initial_user
    initial_user = Member.where(:email => "administrator@administrator.com").first
    
    unless initial_user
        # Create an initial position.
        position = Position.new
        position.name = "Administrator"
        position.pos_type = "Administrator"
        position.save
        
        # Create an initial division.
        division = Division.new
        division.name = "Administrator"
        division.save
        
        # Find initial position and division created.
        # Id´s will be used to crete initial user.
        position = Position.where(:name => "Administrator").first
        division = Division.where(:name => "Administrator").first
      
        # Create an initial user with position and divison created above.
        member = Member.new
        member.name = "Administrator"
        member.email = "administrator@administrator.com"
        member.password = "administrator"
        member.major = "NONE"
        member.grad_year = 9999
        member.member_since = 9999
        member.hometown = "NONE"
        member.position_id = position.id
        member.division_id = division.id
        member.save
    end
  end
  
  
end
