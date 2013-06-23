class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :authenticate_admin, if: :require_admin_login
  include InheritedResources::DSL

  respond_to :html

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
