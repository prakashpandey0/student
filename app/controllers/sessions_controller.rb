#this page for login user 

class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  	 log_in(user) #coming from helper/sessions_helper.rb
     params[:session][:remember_me] == '1' ? remember(user) : forget(user)
     redirect_back_or user
  	 #remember(user)#coming from helper.sessions_helper.rb
     redirect_to(user)
  	else
  		flash.now[:danger] = 'Invalid email/password combination'
  		render 'new'
  	end
  end
  
  def destroy
  	
    log_out if logged_in?  #log_out coming from helper.session_helper.rb
  	redirect_to root_url
  end
end
