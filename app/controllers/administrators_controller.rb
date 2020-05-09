class AdministratorsController < ApplicationController
  skip_before_action :check_authorized, only: [:new, :create]

  def new
    @administrator = Administrator.new
  end

  def create
    @administrator = Administrator.create(params.require(:administrator).permit(:username, :password))
    session[:administrator_id] = @administrator.id
    redirect_to '/welcome'
  end
end
