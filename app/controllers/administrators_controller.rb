class AdministratorsController < ApplicationController
  skip_before_action :check_authorized, only: [:new, :create]
  before_action :check_environment

  def new
    @administrator = Administrator.new
  end

  def create
    @administrator = Administrator.create(params.require(:administrator).permit(:username, :password))
    session[:administrator_id] = @administrator.id
    redirect_to '/welcome'
  end

  private

  def check_environment
    raise ActionController::RoutingError.new("Not found") unless Rails.env.development?
  end
end
