class ApplicationController < ActionController::Base
  def main_page
    render "layouts/application"
  end
end
