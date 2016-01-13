class PasswordsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    @user.set_password_reset if @user
    UserMailer.password_reset(@user, request.host_with_port).deliver
    flash[:warning] = "Password Reset Sent"
    redirect_to login_path
  end

  def create_new
    @user = User.find_by_reset_code(params[:code])
    if !@user.nil?
      if @user.expires_at >= DateTime.now
        # happy path!
      else
        flash[:danger] = "Reset code expired"
        redirect_to login_path
      end
    else
      flash[:danger] = "Bad reset code"
      redirect_to login_path
    end
  end

  def update
    if (params[:user][:password] === params[:user][:password_confirmation])
      user = User.find_by_id(params[:user][:id])
      if !user.nil?
        user.password = params[:user][:password]
        user.save
        flash[:success] = "Password reset!"
      else
        flash[:danger] = "Bad user"
      end
    else
      flash[:danger] = "Passwords don't match"
    end
    redirect_to login_path
  end
end