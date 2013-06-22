class SessionsController < InheritedResources::Base
  redirect_logged_user
  def new
    @session = SimpleAuth::Session.new
  end

  def create
    @session = SimpleAuth::Session.create permitted_params

    respond_with @session, location: root_path
  end

  private
  def permitted_params
    params.require(:simple_auth_session).permit :credential, :password
  end
end
