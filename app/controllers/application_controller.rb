class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_admin, if: :require_admin_login

  private
  def authenticate_admin
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "admin"
    end
  end

  protected
  def require_admin_login
    false
  end
end
