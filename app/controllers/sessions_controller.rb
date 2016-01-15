class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.authenticate user_params[:email], user_params[:password]

    if @user
      session[:user_id] = @user.id
      flash[:success] = "User logged in!"
      redirect_to :back
    else
      flash[:danger] = "Invalid email/password combination"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "User logged out"
    redirect_to :back
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
