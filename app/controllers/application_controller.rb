class ApplicationController < ActionController::Base
  def main_page
    render "layouts/application"
  end

  def form_selection(objects, accessor)
    objects.each_with_object([]) { |elem, memo| memo << [elem.public_send(accessor), elem.id] }
  end
  helper_method :form_selection
end
