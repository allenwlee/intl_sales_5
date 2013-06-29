class SessionsController < ApplicationController

  def new
    render 'users/login'
  end

  def create
    authenticate_user(params["user"])
    session[:id] = @user.id
    
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  def out
    render :layout => false
  end


end
