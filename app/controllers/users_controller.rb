class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      session[:user_id] = @user.id 
      #redirect_to user's show or users/user_id/lists
      redirect_to lists_path 
    else 
      render :new
    end

  end

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end