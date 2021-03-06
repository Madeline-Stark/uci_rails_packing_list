class SessionsController < ApplicationController
  def new
  end

  def create
    # find the user
    @user = User.find_by(email: params[:email])
    # check that user exists and that user's password is right
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id 
      redirect_to lists_path
    else
      render :new
    end
  end 

  def destroy
    session.clear
    redirect_to login_path
  end
end
