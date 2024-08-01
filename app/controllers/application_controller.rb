class ApplicationController < ActionController::Base
  include Punditable
  skip_forgery_protection
  before_action :authenticate_user!

  protected

  # after you sign in, it goes to the tab path
  def after_sign_in_path_for(resource)
    tabs_path
  end
end
