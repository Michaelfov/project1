class SessionController < ApplicationController
  def new
  end


  def create
    #find the user
    #if the user can be authenticated
    #redirect to home
    #else
    #redirect to login
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "Invalid email or password."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
