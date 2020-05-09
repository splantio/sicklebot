class ApplicationController < ActionController::Base
  before_action :check_authorized

  def main_page
    render "layouts/application"
  end

  def form_selection(objects, accessor)
    objects.each_with_object([]) { |elem, memo| memo << [elem.public_send(accessor), elem.id] }
  end
  helper_method :form_selection

  def current_user
    Administrator.find_by(id: session[:administrator_id])
  end
  helper_method :current_user

  def logged_in?
    current_user.present?
  end
  helper_method :logged_in?

  def check_authorized
    redirect_to '/login' unless logged_in?
  end
end
