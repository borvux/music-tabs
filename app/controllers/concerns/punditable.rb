module Punditable
  extend ActiveSupport::Concern
  include Pundit::Authorization

  included do
    after_action :verify_authorized, unless: :devise_controller?
    after_action :verify_policy_scoped, unless: :skip_policy_scope_verification?
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  end

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_back fallback_location: root_path
  end

  def skip_policy_scope_verification?
    devise_controller? || (self.class == TabsController && action_name != 'index')
  end
end
