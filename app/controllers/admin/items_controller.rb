class Admin::ItemsController < InheritedResources::Base
  actions :all, except: :show
  layout "admin"

  private
  def permitted_params
    params.permit item: [:description, :price, :image]
  end

  protected
  def require_admin_login
    true
  end
end
