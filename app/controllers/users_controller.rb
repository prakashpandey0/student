class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update] #only logged in user will upadte there profile
  before_action :correct_user,   only: [:edit, :update] #only logged user can upadte their perofile 

  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  	#debugger
  end

  def create 
   @user  = User.new(user_params)
   if @user.save
   	   flash[:success] = "Welcome to ARMY!"
      redirect_to @user #or redirect_to user_url(@user)
     else
   		render 'new'
   end
  end
  def user_params 
  	params.require(:user).permit(:name,:email,:password,
  								:password_confirmation,:phone_no)
  end

  def edit 
      @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user #or redirect_to user_url(@user)
    else
      render 'edit'
    end
  end

  # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # Confirms the correct user.
    def correct_user 
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user #current_user is defind in session_helper.rb
    end


end
