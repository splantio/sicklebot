class SessionsController < ApplicationController
  skip_before_action :check_authorized, only: [:new, :create]

  def new
    redirect_to '/welcome' if logged_in?
  end

  def create
    @administrator = Administrator.find_by(username: params[:username])
    if @administrator && @administrator.authenticate(params[:password])
      session[:administrator_id] = @administrator.id
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:administrator_id] = nil
    flash[:success] = "Successfully Logged Out!"
    redirect_to '/login'
  end

  def welcome
  end
end
