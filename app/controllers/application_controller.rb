class ApplicationController < ActionController::Base
  skip_forgery_protection
  before_action :authenticate_user!

  protected

  def after_sign_in_path_for(resource)
    tabs_path 
  end
end
