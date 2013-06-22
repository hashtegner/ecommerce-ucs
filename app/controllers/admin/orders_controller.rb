class Admin::OrdersController < InheritedResources::Base
  layout "admin"
  actions :index

  protected
  def require_admin_login
    true
  end
end
