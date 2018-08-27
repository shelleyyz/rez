class SessionController < ApplicationController
  def new
    redirect_to user_path(user) if @user.present?
  end

  def create
    user = User.find_by :email => params[:email]
    #if the password authenticates
    if user.present? && user.authenticate(params[:password])
      #remember this user in the session
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:error] = "Invalid email or password"
      #send them to the login page again with the above error message
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end